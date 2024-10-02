

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE OR REPLACE FUNCTION "public"."fill_absentees_data"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    INSERT INTO absentees (roll_number, class_code, date, reason)
    SELECT DISTINCT s.roll_number, c.class_code, a.date, a.remarks
    FROM attendance a
    JOIN students s ON a.roll_number = s.roll_number
    JOIN classes c ON a.mapping_id = c.class_id
    WHERE a.status = 'absent';
    
    INSERT INTO absentees (roll_number, class_code, date, reason)
    SELECT DISTINCT s.roll_number, c.class_code, sld.start_date, sld.reason
    FROM student_leave_requests sld
    JOIN students s ON sld.student_id = s.student_id
    JOIN classes c ON sld.class_code = c.class_code
    WHERE sld.status = 'approved';
    
    INSERT INTO absentees (roll_number, class_code, date, reason)
    SELECT DISTINCT s.roll_number, c.class_code, sodr.start_date, sodr.reason
    FROM student_on_duty_request sodr
    JOIN students s ON sodr.student_id = s.student_id
    JOIN classes c ON sodr.class_code = c.class_code
    WHERE sodr.status = 'approved';
    
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."fill_absentees_data"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_class_marks_with_details"("class_code_input" "text") RETURNS TABLE("mark_id" "uuid", "student_id" "uuid", "exam_id" "uuid", "obtained_marks" integer, "student_register_number" "text", "student_name" "text", "course_code" "text", "course_name" "text", "exam_type" "text")
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY
    SELECT m.mark_id, m.student_id, m.exam_id, m.obtained_marks, m.student_register_number, s.student_name, c.course_code, co.course_name, e.exam_type
    FROM public.marks m
    JOIN public.students s ON m.student_id = s.student_id
    JOIN public.exams e ON m.exam_id = e.exam_id
    JOIN public.courses c ON e.course_id = c.course_id
    JOIN public.courses co ON e.course_id = co.course_id
    WHERE s.class_code = class_code_input;
END;
$$;


ALTER FUNCTION "public"."get_class_marks_with_details"("class_code_input" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_courses_for_class_code"("class_code_param" "text") RETURNS TABLE("course_id" "uuid", "course_code" "text", "course_name" "text", "description" "text", "teacher_id" "uuid", "is_lab" boolean, "is_additional" boolean, "semester" integer)
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY
    SELECT c.course_id, c.course_code, c.course_name, c.description, m.faculty_id, c.is_lab, c.is_additional, m.semester
    FROM public.courses c
    JOIN public.course_class_faculty_mapping m ON c.course_code = m.course_code
    JOIN public.classes cl ON m.class_code = cl.class_code
    WHERE cl.class_code = class_code_param;
END;
$$;


ALTER FUNCTION "public"."get_courses_for_class_code"("class_code_param" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_faculty_user_info"() RETURNS TABLE("faculty_id" "uuid", "department_name" "text", "designation" "text", "handling_class" "text", "department_code" "text", "user_id" "uuid", "email" "text", "username" "text", "profile_picture" "text", "role" "text", "phone_number" "text")
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY
    SELECT
        f.faculty_id,
        f.department_name,
        f.designation,
        f.handling_class,
        f.department_code,
        u.user_id,
        u.email,
        u.username,
        u.profile_picture,
        u.role,
        u.phone_number
    FROM public.faculty f
    JOIN public.users u ON f.faculty_id = u.user_id;
END;
$$;


ALTER FUNCTION "public"."get_faculty_user_info"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_student_user_info"() RETURNS TABLE("student_id" "uuid", "department_name" "text", "graduation_year" integer, "register_number" "text", "roll_number" "text", "section" "text", "semester" integer, "class_code" "text", "user_id" "uuid", "username" "text", "email" "text", "password_hash" "text", "role" "text", "profile_picture" "text", "bio" "text", "phone_number" "text")
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.department_name, s.graduation_year, s.register_number, s.roll_number, s.section, s.semester, s.class_code,
           u.user_id, u.username, u.email, u.password_hash, u.role, u.profile_picture, u.bio, u.phone_number
    FROM public.students s
    JOIN public.users u ON s.student_id = u.user_id;
END;
$$;


ALTER FUNCTION "public"."get_student_user_info"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_students_with_user_info_by_class_code"("class_code_param" "text") RETURNS TABLE("student_id" "uuid", "department_name" "text", "graduation_year" integer, "register_number" "text", "roll_number" "text", "section" "text", "semester" integer, "class_code" "text", "user_id" "uuid", "username" "text", "email" "text", "password_hash" "text", "role" "text", "profile_picture" "text", "bio" "text", "phone_number" "text")
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.department_name, s.graduation_year, s.register_number, s.roll_number, s.section, s.semester, s.class_code,
           u.user_id, u.username, u.email, u.password_hash, u.role, u.profile_picture, u.bio, u.phone_number
    FROM public.students s
    JOIN public.users u ON s.student_id = u.user_id
    WHERE s.class_code = class_code_param;
END;
$$;


ALTER FUNCTION "public"."get_students_with_user_info_by_class_code"("class_code_param" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$begin
  insert into public.users (user_id, username, email, role)
  values (new.id, new.raw_user_meta_data->>'name',email, new.raw_user_meta_data->>'role');
  return new;
end;$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."insert_faculty_or_students"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    IF NEW.role = 'Faculty' THEN
        INSERT INTO faculty(faculty_id)
        VALUES (NEW.user_id);
    ELSIF NEW.role = 'Student' THEN
        INSERT INTO students(student_id, register_number, roll_number)
        VALUES (NEW.user_id, NEW.user_id, NEW.user_id);
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."insert_faculty_or_students"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."insert_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$begin
  -- Insert a new row into the users table with the authenticated user's ID and email
  -- insert into public.users (user_id, email)
  -- values (NEW.id, NEW.email);

  INSERT INTO public.users (user_id, email)
  VALUES (NEW.id, NEW.email)
  ON CONFLICT (email) DO UPDATE SET user_id = EXCLUDED.user_id;

  UPDATE public.users SET username = new.raw_user_meta_data->>'name',role = new.raw_user_meta_data->>'role' where user_id = new.id;

  return new;
end;$$;


ALTER FUNCTION "public"."insert_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."insert_random_exam_marks"() RETURNS "void"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    student_data RECORD;
    exam_data RECORD;
    random_marks INTEGER;
BEGIN
    -- Loop through each student
    FOR student_data IN (
        SELECT user_id
        FROM users
    ) LOOP
        -- Loop through each exam type
        FOR exam_data IN (
            SELECT exam_id, total_marks
            FROM exams
            WHERE exam_type IN ('semester')
        ) LOOP
            -- Generate random marks between 10 and total marks for each exam
            random_marks := FLOOR(RANDOM() * (exam_data.total_marks - 10 + 1) + 10);
            
            -- Insert the random marks into the marks table
            INSERT INTO public.marks (user_id, exam_id, obtained_marks)
            VALUES (student_data.user_id, exam_data.exam_id, random_marks);
        END LOOP;
    END LOOP;
END;
$$;


ALTER FUNCTION "public"."insert_random_exam_marks"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_student_register_number"() RETURNS "void"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    student_id_var uuid;
    register_number_var text;
BEGIN
    -- Loop through students to update register numbers in marks table
    FOR student_id_var, register_number_var IN
        SELECT s.student_id, s.register_number
        FROM public.students AS s
    LOOP
        UPDATE public.marks AS m
        SET student_register_number = register_number_var
        WHERE m.student_id = student_id_var;
    END LOOP;

    -- No need for COMMIT here, as functions are automatically wrapped in a transaction block
END;
$$;


ALTER FUNCTION "public"."update_student_register_number"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_total_students_present"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    UPDATE public.classes
    SET total_students_present = (
        SELECT COUNT(*)
        FROM public.students
        WHERE students.class_code = NEW.class_code
    )
    WHERE class_code = NEW.class_code;
    
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_total_students_present"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_user_name_from_email"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    IF NEW.username IS NULL THEN
        NEW.username = substring(NEW.email from '^[^@]+');
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_user_name_from_email"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_user_role_from_email_domain"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    IF NEW.role IS NULL THEN
        IF NEW.email ILIKE '%@siet.ac.in' THEN
            NEW.role = 'Faculty';
        ELSIF NEW.email ILIKE '%@srishakthi.ac.in' THEN
            NEW.role = 'Student';
        END IF;
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_user_role_from_email_domain"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."absentees" (
    "id" bigint NOT NULL,
    "roll_number" "text" NOT NULL,
    "class_code" "text" NOT NULL,
    "date" timestamp with time zone NOT NULL,
    "reason" "text"
);


ALTER TABLE "public"."absentees" OWNER TO "postgres";


ALTER TABLE "public"."absentees" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."absentees_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."admins" (
    "admin_id" "uuid" NOT NULL,
    "admin_role" "text" DEFAULT 'admin'::"text" NOT NULL,
    "additional_info" "text"
);


ALTER TABLE "public"."admins" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."attendance" (
    "date" "date" NOT NULL,
    "status" "text",
    "roll_number" "text",
    "remarks" "text",
    "substitute_faculty_id" "uuid",
    "mapping_id" bigint,
    "attendance_id" "text" NOT NULL,
    "nth_period" integer,
    CONSTRAINT "attendance_status_check" CHECK (("status" = ANY (ARRAY['present'::"text", 'absent'::"text", 'late'::"text", 'on_duty'::"text"])))
);


ALTER TABLE "public"."attendance" OWNER TO "postgres";


COMMENT ON COLUMN "public"."attendance"."attendance_id" IS 'yyyy-mm-dd/nth period/mapping_id/roll_number';



CREATE TABLE IF NOT EXISTS "public"."batches" (
    "batch_id" integer NOT NULL,
    "graduation_year" integer NOT NULL,
    "admission_year" integer NOT NULL,
    "batch_name" "text" NOT NULL,
    CONSTRAINT "batches_batch_id_graduation_check" CHECK (("batch_id" = "graduation_year")),
    CONSTRAINT "graduation_year_check" CHECK (("graduation_year" > "admission_year"))
);


ALTER TABLE "public"."batches" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."classes" (
    "class_id" bigint NOT NULL,
    "class_name" "text" NOT NULL,
    "class_code" "text" NOT NULL,
    "department_id" bigint,
    "class_advisor_id" "uuid",
    "batch" "text",
    "graduation_year" integer,
    "lecture_hall" "text",
    "section" "text",
    "total_students_present" integer
);


ALTER TABLE "public"."classes" OWNER TO "postgres";


ALTER TABLE "public"."classes" ALTER COLUMN "class_id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."classes_class_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."course_class_faculty_mapping" (
    "course_code" "text" NOT NULL,
    "class_code" "text" NOT NULL,
    "faculty_id" "uuid" NOT NULL,
    "mapping_id" integer NOT NULL,
    "semester" integer
);


ALTER TABLE "public"."course_class_faculty_mapping" OWNER TO "postgres";


ALTER TABLE "public"."course_class_faculty_mapping" ALTER COLUMN "mapping_id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."course_class_faculty_mapping_mapping_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."courses" (
    "course_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "course_name" "text" NOT NULL,
    "course_code" "text" NOT NULL,
    "description" "text",
    "is_lab" boolean DEFAULT false,
    "is_additional" boolean DEFAULT false
);


ALTER TABLE "public"."courses" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."departments" (
    "department_id" bigint NOT NULL,
    "department_name" "text" NOT NULL,
    "department_code" "text" NOT NULL,
    "head_of_department_id" "uuid",
    "classes" "text"[]
);


ALTER TABLE "public"."departments" OWNER TO "postgres";


COMMENT ON COLUMN "public"."departments"."classes" IS 'All classes under this department';



ALTER TABLE "public"."departments" ALTER COLUMN "department_id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."departments_department_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."dependents" (
    "dependent_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "student_id" "uuid" NOT NULL,
    "dependent_name" "text" NOT NULL,
    "email" "text",
    "phone_number" "text",
    "relation" "text"
);


ALTER TABLE "public"."dependents" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."exams" (
    "exam_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "course_id" "uuid",
    "exam_type" "text",
    "exam_date" "date",
    "total_marks" integer,
    CONSTRAINT "exam_type_check" CHECK (("exam_type" = ANY (ARRAY['ciat1'::"text", 'ciat2'::"text", 'ciat3'::"text", 'model'::"text", 'practical'::"text", 'semester'::"text"])))
);


ALTER TABLE "public"."exams" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."faculty" (
    "faculty_id" "uuid" NOT NULL,
    "department_name" "text",
    "designation" "text" DEFAULT '''Not Set'''::"text",
    "handling_class" "text",
    "department_code" "text"
);


ALTER TABLE "public"."faculty" OWNER TO "postgres";


COMMENT ON COLUMN "public"."faculty"."handling_class" IS 'If this faculty is class advisor';



CREATE TABLE IF NOT EXISTS "public"."marks" (
    "mark_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "student_id" "uuid",
    "exam_id" "uuid",
    "obtained_marks" integer,
    "student_register_number" "text"
);


ALTER TABLE "public"."marks" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."student_leave_requests" (
    "request_id" bigint NOT NULL,
    "student_id" "uuid" NOT NULL,
    "class_code" "text",
    "start_date" timestamp with time zone NOT NULL,
    "end_date" timestamp with time zone NOT NULL,
    "reason" "text",
    "status" "text" DEFAULT 'pending'::"text" NOT NULL,
    CONSTRAINT "student_leave_requests_status_check" CHECK (("status" = ANY (ARRAY['pending'::"text", 'approved'::"text", 'rejected'::"text"])))
);


ALTER TABLE "public"."student_leave_requests" OWNER TO "postgres";


ALTER TABLE "public"."student_leave_requests" ALTER COLUMN "request_id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."student_leave_requests_request_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."student_on_duty_request" (
    "request_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "student_id" "uuid" NOT NULL,
    "class_code" "text",
    "start_date" timestamp with time zone NOT NULL,
    "end_date" timestamp with time zone NOT NULL,
    "reason" "text",
    "status" "text" DEFAULT 'pending'::"text" NOT NULL,
    CONSTRAINT "student_on_duty_request_status_check" CHECK (("status" = ANY (ARRAY['pending'::"text", 'approved'::"text", 'rejected'::"text"])))
);


ALTER TABLE "public"."student_on_duty_request" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."student_register_number_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."student_register_number_seq" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."students" (
    "student_id" "uuid" NOT NULL,
    "department_name" "text",
    "graduation_year" integer,
    "register_number" "text" NOT NULL,
    "roll_number" "text" NOT NULL,
    "section" "text",
    "semester" integer,
    "class_code" "text"
);


ALTER TABLE "public"."students" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."tasks" (
    "task_id" "uuid" NOT NULL,
    "user_id" "uuid",
    "course_id" "uuid",
    "task_title" "text" NOT NULL,
    "description" "text",
    "deadline" timestamp without time zone NOT NULL,
    "status" "text",
    CONSTRAINT "tasks_status_check" CHECK (("status" = ANY (ARRAY['pending'::"text", 'completed'::"text", 'overdue'::"text"])))
);


ALTER TABLE "public"."tasks" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "user_id" "uuid" NOT NULL,
    "username" "text",
    "email" "text",
    "password_hash" "text",
    "role" "text",
    "profile_picture" "text",
    "bio" "text",
    "phone_number" "text",
    CONSTRAINT "users_phone_number_check" CHECK (("length"("phone_number") < 15))
);


ALTER TABLE "public"."users" OWNER TO "postgres";


ALTER TABLE ONLY "public"."absentees"
    ADD CONSTRAINT "absentees_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."admins"
    ADD CONSTRAINT "admins_pkey" PRIMARY KEY ("admin_id");



ALTER TABLE ONLY "public"."attendance"
    ADD CONSTRAINT "attendance_pkey" PRIMARY KEY ("attendance_id");



ALTER TABLE ONLY "public"."attendance"
    ADD CONSTRAINT "attendance_unique_attendance_id_key" UNIQUE ("attendance_id");



ALTER TABLE ONLY "public"."batches"
    ADD CONSTRAINT "batches_graduation_admission_unique" UNIQUE ("graduation_year", "admission_year");



ALTER TABLE ONLY "public"."batches"
    ADD CONSTRAINT "batches_pkey" PRIMARY KEY ("batch_id");



ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_class_code_key" UNIQUE ("class_code");



ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_pkey" PRIMARY KEY ("class_id", "class_code");



ALTER TABLE ONLY "public"."course_class_faculty_mapping"
    ADD CONSTRAINT "course_class_faculty_mapping_pkey" PRIMARY KEY ("mapping_id");



ALTER TABLE ONLY "public"."courses"
    ADD CONSTRAINT "courses_course_code_key" UNIQUE ("course_code");



ALTER TABLE ONLY "public"."courses"
    ADD CONSTRAINT "courses_pkey" PRIMARY KEY ("course_id");



ALTER TABLE ONLY "public"."departments"
    ADD CONSTRAINT "departments_department_code_key" UNIQUE ("department_code");



ALTER TABLE ONLY "public"."departments"
    ADD CONSTRAINT "departments_department_name_key" UNIQUE ("department_name");



ALTER TABLE ONLY "public"."departments"
    ADD CONSTRAINT "departments_pkey" PRIMARY KEY ("department_id");



ALTER TABLE ONLY "public"."dependents"
    ADD CONSTRAINT "dependents_pkey" PRIMARY KEY ("dependent_id");



ALTER TABLE ONLY "public"."exams"
    ADD CONSTRAINT "exams_pkey" PRIMARY KEY ("exam_id");



ALTER TABLE ONLY "public"."faculty"
    ADD CONSTRAINT "faculty_pkey" PRIMARY KEY ("faculty_id");



ALTER TABLE ONLY "public"."marks"
    ADD CONSTRAINT "marks_pkey" PRIMARY KEY ("mark_id");



ALTER TABLE ONLY "public"."student_leave_requests"
    ADD CONSTRAINT "student_leave_requests_pkey" PRIMARY KEY ("request_id");



ALTER TABLE ONLY "public"."student_on_duty_request"
    ADD CONSTRAINT "student_on_duty_request_pkey" PRIMARY KEY ("request_id");



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_pkey" PRIMARY KEY ("student_id", "register_number", "roll_number");



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_register_number_key" UNIQUE ("register_number");



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_roll_number_key" UNIQUE ("roll_number");



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_student_id_key" UNIQUE ("student_id");



ALTER TABLE ONLY "public"."tasks"
    ADD CONSTRAINT "tasks_pkey" PRIMARY KEY ("task_id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("user_id");



CREATE OR REPLACE TRIGGER "fill_absentees_trigger" AFTER INSERT ON "public"."attendance" FOR EACH ROW EXECUTE FUNCTION "public"."fill_absentees_data"();



CREATE OR REPLACE TRIGGER "insert_faculty_or_students_trigger" AFTER INSERT ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."insert_faculty_or_students"();



CREATE OR REPLACE TRIGGER "update_total_students_trigger" AFTER INSERT OR DELETE OR UPDATE ON "public"."students" FOR EACH ROW EXECUTE FUNCTION "public"."update_total_students_present"();



CREATE OR REPLACE TRIGGER "update_user_name_trigger" BEFORE INSERT OR UPDATE ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."update_user_name_from_email"();



ALTER TABLE ONLY "public"."absentees"
    ADD CONSTRAINT "absentees_class_code_fkey" FOREIGN KEY ("class_code") REFERENCES "public"."classes"("class_code") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."absentees"
    ADD CONSTRAINT "absentees_roll_number_fkey" FOREIGN KEY ("roll_number") REFERENCES "public"."students"("roll_number") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."admins"
    ADD CONSTRAINT "admins_admin_id_fkey" FOREIGN KEY ("admin_id") REFERENCES "public"."users"("user_id");



ALTER TABLE ONLY "public"."attendance"
    ADD CONSTRAINT "attendance_mapping_id_fkey" FOREIGN KEY ("mapping_id") REFERENCES "public"."course_class_faculty_mapping"("mapping_id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."attendance"
    ADD CONSTRAINT "attendance_roll_number_fkey" FOREIGN KEY ("roll_number") REFERENCES "public"."students"("roll_number") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."attendance"
    ADD CONSTRAINT "attendance_substitute_faculty_id_fkey" FOREIGN KEY ("substitute_faculty_id") REFERENCES "public"."faculty"("faculty_id") ON UPDATE RESTRICT ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_class_advisor_id_fkey" FOREIGN KEY ("class_advisor_id") REFERENCES "public"."faculty"("faculty_id");



ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "public"."departments"("department_id");



ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_graduation_year_fkey" FOREIGN KEY ("graduation_year") REFERENCES "public"."batches"("batch_id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."course_class_faculty_mapping"
    ADD CONSTRAINT "course_class_faculty_mapping_class_code_fkey" FOREIGN KEY ("class_code") REFERENCES "public"."classes"("class_code") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."course_class_faculty_mapping"
    ADD CONSTRAINT "course_class_faculty_mapping_course_code_fkey" FOREIGN KEY ("course_code") REFERENCES "public"."courses"("course_code") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."course_class_faculty_mapping"
    ADD CONSTRAINT "course_class_faculty_mapping_faculty_id_fkey" FOREIGN KEY ("faculty_id") REFERENCES "public"."faculty"("faculty_id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."departments"
    ADD CONSTRAINT "departments_head_of_department_id_fkey" FOREIGN KEY ("head_of_department_id") REFERENCES "public"."faculty"("faculty_id");



ALTER TABLE ONLY "public"."dependents"
    ADD CONSTRAINT "dependents_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."students"("student_id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."exams"
    ADD CONSTRAINT "exams_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "public"."courses"("course_id");



ALTER TABLE ONLY "public"."faculty"
    ADD CONSTRAINT "faculty_department_code_fkey" FOREIGN KEY ("department_code") REFERENCES "public"."departments"("department_code") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."faculty"
    ADD CONSTRAINT "faculty_department_name_fkey" FOREIGN KEY ("department_name") REFERENCES "public"."departments"("department_name") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."faculty"
    ADD CONSTRAINT "faculty_faculty_id_fkey" FOREIGN KEY ("faculty_id") REFERENCES "public"."users"("user_id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."faculty"
    ADD CONSTRAINT "faculty_handling_class_fkey" FOREIGN KEY ("handling_class") REFERENCES "public"."classes"("class_code") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."marks"
    ADD CONSTRAINT "marks_exam_id_fkey" FOREIGN KEY ("exam_id") REFERENCES "public"."exams"("exam_id");



ALTER TABLE ONLY "public"."marks"
    ADD CONSTRAINT "marks_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."users"("user_id") ON UPDATE CASCADE;



ALTER TABLE ONLY "public"."marks"
    ADD CONSTRAINT "marks_student_register_number_fkey" FOREIGN KEY ("student_register_number") REFERENCES "public"."students"("register_number") ON UPDATE CASCADE;



ALTER TABLE ONLY "public"."student_leave_requests"
    ADD CONSTRAINT "student_leave_requests_class_code_fkey" FOREIGN KEY ("class_code") REFERENCES "public"."classes"("class_code") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."student_leave_requests"
    ADD CONSTRAINT "student_leave_requests_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."students"("student_id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."student_on_duty_request"
    ADD CONSTRAINT "student_on_duty_request_class_code_fkey" FOREIGN KEY ("class_code") REFERENCES "public"."classes"("class_code") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."student_on_duty_request"
    ADD CONSTRAINT "student_on_duty_request_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."students"("student_id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_class_code_fkey" FOREIGN KEY ("class_code") REFERENCES "public"."classes"("class_code") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_department_name_fkey" FOREIGN KEY ("department_name") REFERENCES "public"."departments"("department_name") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_graduation_year_fkey" FOREIGN KEY ("graduation_year") REFERENCES "public"."batches"("batch_id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."students"
    ADD CONSTRAINT "students_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."users"("user_id") ON UPDATE CASCADE;



ALTER TABLE ONLY "public"."tasks"
    ADD CONSTRAINT "tasks_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "public"."courses"("course_id");



ALTER TABLE ONLY "public"."tasks"
    ADD CONSTRAINT "tasks_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("user_id");



CREATE POLICY "Faculty can modify courses they teach." ON "public"."courses" FOR INSERT;



CREATE POLICY "Public profiles are viewable by everyone." ON "public"."users" FOR SELECT USING (true);



CREATE POLICY "Users can insert their own profile." ON "public"."users" FOR INSERT WITH CHECK ((( SELECT "auth"."uid"() AS "uid") = "user_id"));



CREATE POLICY "Users can update own profile." ON "public"."users" FOR UPDATE USING ((( SELECT "auth"."uid"() AS "uid") = "user_id"));



ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."faculty";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."students";



GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";




















































































































































































GRANT ALL ON FUNCTION "public"."fill_absentees_data"() TO "anon";
GRANT ALL ON FUNCTION "public"."fill_absentees_data"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."fill_absentees_data"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_class_marks_with_details"("class_code_input" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."get_class_marks_with_details"("class_code_input" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_class_marks_with_details"("class_code_input" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_courses_for_class_code"("class_code_param" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."get_courses_for_class_code"("class_code_param" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_courses_for_class_code"("class_code_param" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_faculty_user_info"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_faculty_user_info"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_faculty_user_info"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_student_user_info"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_student_user_info"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_student_user_info"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_students_with_user_info_by_class_code"("class_code_param" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."get_students_with_user_info_by_class_code"("class_code_param" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_students_with_user_info_by_class_code"("class_code_param" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."insert_faculty_or_students"() TO "anon";
GRANT ALL ON FUNCTION "public"."insert_faculty_or_students"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."insert_faculty_or_students"() TO "service_role";



GRANT ALL ON FUNCTION "public"."insert_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."insert_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."insert_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."insert_random_exam_marks"() TO "anon";
GRANT ALL ON FUNCTION "public"."insert_random_exam_marks"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."insert_random_exam_marks"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_student_register_number"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_student_register_number"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_student_register_number"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_total_students_present"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_total_students_present"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_total_students_present"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_user_name_from_email"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_user_name_from_email"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_user_name_from_email"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_user_role_from_email_domain"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_user_role_from_email_domain"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_user_role_from_email_domain"() TO "service_role";


















GRANT ALL ON TABLE "public"."absentees" TO "anon";
GRANT ALL ON TABLE "public"."absentees" TO "authenticated";
GRANT ALL ON TABLE "public"."absentees" TO "service_role";



GRANT ALL ON SEQUENCE "public"."absentees_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."absentees_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."absentees_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."admins" TO "anon";
GRANT ALL ON TABLE "public"."admins" TO "authenticated";
GRANT ALL ON TABLE "public"."admins" TO "service_role";



GRANT ALL ON TABLE "public"."attendance" TO "anon";
GRANT ALL ON TABLE "public"."attendance" TO "authenticated";
GRANT ALL ON TABLE "public"."attendance" TO "service_role";



GRANT ALL ON TABLE "public"."batches" TO "anon";
GRANT ALL ON TABLE "public"."batches" TO "authenticated";
GRANT ALL ON TABLE "public"."batches" TO "service_role";



GRANT ALL ON TABLE "public"."classes" TO "anon";
GRANT ALL ON TABLE "public"."classes" TO "authenticated";
GRANT ALL ON TABLE "public"."classes" TO "service_role";



GRANT ALL ON SEQUENCE "public"."classes_class_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."classes_class_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."classes_class_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."course_class_faculty_mapping" TO "anon";
GRANT ALL ON TABLE "public"."course_class_faculty_mapping" TO "authenticated";
GRANT ALL ON TABLE "public"."course_class_faculty_mapping" TO "service_role";



GRANT ALL ON SEQUENCE "public"."course_class_faculty_mapping_mapping_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."course_class_faculty_mapping_mapping_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."course_class_faculty_mapping_mapping_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."courses" TO "anon";
GRANT ALL ON TABLE "public"."courses" TO "authenticated";
GRANT ALL ON TABLE "public"."courses" TO "service_role";



GRANT ALL ON TABLE "public"."departments" TO "anon";
GRANT ALL ON TABLE "public"."departments" TO "authenticated";
GRANT ALL ON TABLE "public"."departments" TO "service_role";



GRANT ALL ON SEQUENCE "public"."departments_department_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."departments_department_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."departments_department_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."dependents" TO "anon";
GRANT ALL ON TABLE "public"."dependents" TO "authenticated";
GRANT ALL ON TABLE "public"."dependents" TO "service_role";



GRANT ALL ON TABLE "public"."exams" TO "anon";
GRANT ALL ON TABLE "public"."exams" TO "authenticated";
GRANT ALL ON TABLE "public"."exams" TO "service_role";



GRANT ALL ON TABLE "public"."faculty" TO "anon";
GRANT ALL ON TABLE "public"."faculty" TO "authenticated";
GRANT ALL ON TABLE "public"."faculty" TO "service_role";



GRANT ALL ON TABLE "public"."marks" TO "anon";
GRANT ALL ON TABLE "public"."marks" TO "authenticated";
GRANT ALL ON TABLE "public"."marks" TO "service_role";



GRANT ALL ON TABLE "public"."student_leave_requests" TO "anon";
GRANT ALL ON TABLE "public"."student_leave_requests" TO "authenticated";
GRANT ALL ON TABLE "public"."student_leave_requests" TO "service_role";



GRANT ALL ON SEQUENCE "public"."student_leave_requests_request_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."student_leave_requests_request_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."student_leave_requests_request_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."student_on_duty_request" TO "anon";
GRANT ALL ON TABLE "public"."student_on_duty_request" TO "authenticated";
GRANT ALL ON TABLE "public"."student_on_duty_request" TO "service_role";



GRANT ALL ON SEQUENCE "public"."student_register_number_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."student_register_number_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."student_register_number_seq" TO "service_role";



GRANT ALL ON TABLE "public"."students" TO "anon";
GRANT ALL ON TABLE "public"."students" TO "authenticated";
GRANT ALL ON TABLE "public"."students" TO "service_role";



GRANT ALL ON TABLE "public"."tasks" TO "anon";
GRANT ALL ON TABLE "public"."tasks" TO "authenticated";
GRANT ALL ON TABLE "public"."tasks" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
