SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	bc7ef653-7533-4230-bac0-08cbff26eb1a	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"mahalakshmipmat@siet.ac.in","user_id":"6b9b02ae-9e3e-47a2-8d49-8528529905c5","user_phone":""}}	2024-04-22 18:23:04.085005+00	
00000000-0000-0000-0000-000000000000	989707c2-71f7-488f-9e9e-493dfe53fed2	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sugashinikit@siet.ac.in","user_id":"b566d98a-186b-4e67-aaaf-c8b6d89fb612","user_phone":""}}	2024-04-22 18:23:47.232114+00	
00000000-0000-0000-0000-000000000000	b3017dbb-5d52-4409-953a-fa7b2cccf887	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"deepamit@siet.ac.in","user_id":"a0fbb030-d436-48cb-89d2-341c2957975f","user_phone":""}}	2024-04-22 18:38:22.542088+00	
00000000-0000-0000-0000-000000000000	4097b2a3-1c96-44c3-982f-77447d229615	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"dheekshaece@siet.ac.in","user_id":"d41723c1-6efd-4c78-a2b1-c0348a9a1ed2","user_phone":""}}	2024-04-22 18:38:38.548534+00	
00000000-0000-0000-0000-000000000000	a4c2d9fb-bab1-48f6-8413-3279df85364d	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"varunkumarbit@siet.ac.in","user_id":"39a20171-b808-4d1e-8d19-5fa0f6ec62a4","user_phone":""}}	2024-04-22 18:38:57.434532+00	
00000000-0000-0000-0000-000000000000	6d7b83d2-1e50-4ae3-b9fc-5474195cb53a	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sathyatit@siet.ac.in","user_id":"2b42fc81-3c0a-4c21-ad01-8bd72683ad0a","user_phone":""}}	2024-04-22 18:39:29.413669+00	
00000000-0000-0000-0000-000000000000	8b485c49-3d83-4967-9b91-b45550c655f2	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"gayathridevimit@siet.ac.in","user_id":"bd939c19-d0ad-4dcb-bd90-f25abd7fa753","user_phone":""}}	2024-04-22 18:39:51.642081+00	
00000000-0000-0000-0000-000000000000	dd11dd44-f720-4ae7-a681-d66f4dc1503b	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"suganthicdc@siet.ac.in","user_id":"ae232278-39cc-43b4-86a0-1426c21ea957","user_phone":""}}	2024-04-22 18:40:07.146001+00	
00000000-0000-0000-0000-000000000000	93508ed1-aadf-4503-aa0a-7a3a82903b0b	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"chandanagri@siet.ac.in","user_id":"d302f9ac-078a-4c19-b488-f0d2c58e8792","user_phone":""}}	2024-04-22 18:40:20.71675+00	
00000000-0000-0000-0000-000000000000	9f58b71a-b060-416b-942c-991bcf657723	{"action":"user_confirmation_requested","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 00:56:24.910897+00	
00000000-0000-0000-0000-000000000000	1b6c6efd-753d-49ad-b85e-f7b4a20640e5	{"action":"user_confirmation_requested","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 00:58:52.743461+00	
00000000-0000-0000-0000-000000000000	7acfbfef-9f16-4924-919d-e1f3df561704	{"action":"user_confirmation_requested","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 00:59:38.690101+00	
00000000-0000-0000-0000-000000000000	fe8c1df2-5059-47a7-83a2-302bfb93aa9a	{"action":"user_confirmation_requested","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:00:06.655103+00	
00000000-0000-0000-0000-000000000000	bcb3ba78-cd1d-420c-94b3-b457bee2b6dc	{"action":"user_confirmation_requested","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:02:22.84167+00	
00000000-0000-0000-0000-000000000000	a9d8addb-18b7-4814-a2b0-a0c08bcc147e	{"action":"user_signedup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"team"}	2024-06-06 01:02:45.73801+00	
00000000-0000-0000-0000-000000000000	7566772f-e40c-4bc1-8a09-af5320c49b70	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:03:01.992922+00	
00000000-0000-0000-0000-000000000000	a89b2275-f674-4dbb-be0b-583d6589cd41	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:03:57.018952+00	
00000000-0000-0000-0000-000000000000	80cfdaf3-47ad-40d9-b974-780c4edaa448	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:06:28.782706+00	
00000000-0000-0000-0000-000000000000	a742ef88-8c9a-411a-a66c-e41ffd158ed2	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:06:51.230912+00	
00000000-0000-0000-0000-000000000000	1d62a8c8-2138-4477-98d4-d7e527a4affb	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:12:54.104246+00	
00000000-0000-0000-0000-000000000000	6dad2466-a812-486f-aae2-929c4d040de4	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:14:06.059948+00	
00000000-0000-0000-0000-000000000000	db672765-c29b-4957-8350-be0049d8b352	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:14:43.967181+00	
00000000-0000-0000-0000-000000000000	5c1ffca0-0a45-4c16-ad50-78c70c6787ef	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:14:47.893704+00	
00000000-0000-0000-0000-000000000000	a3276e31-93ae-42e8-b90d-315bd9c64af7	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:15:55.836944+00	
00000000-0000-0000-0000-000000000000	5eb3f5d9-5b7e-47da-aded-c752988bf4b3	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:18:35.847791+00	
00000000-0000-0000-0000-000000000000	9c57b211-c31e-4c13-8925-76aa92b7e19d	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:18:46.343162+00	
00000000-0000-0000-0000-000000000000	48c0867d-34fe-473f-add8-1ea15f0ff044	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:23:14.582055+00	
00000000-0000-0000-0000-000000000000	8eb1455d-eeee-4fe2-8b26-9b5285985408	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:23:47.889042+00	
00000000-0000-0000-0000-000000000000	ae39a2b8-e98c-4440-aacc-898fda6d7b12	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:24:49.455785+00	
00000000-0000-0000-0000-000000000000	db099c94-16f9-40fa-85ec-4224c42bd3f1	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:25:52.146847+00	
00000000-0000-0000-0000-000000000000	7ce3d978-8f6d-4feb-8a78-2cb7fdd46e97	{"action":"user_repeated_signup","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-06 01:26:54.89589+00	
00000000-0000-0000-0000-000000000000	b2db29f3-3873-431d-b831-5d490dc8e8c3	{"action":"login","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-06 01:27:49.026619+00	
00000000-0000-0000-0000-000000000000	15979654-92c5-4f79-8839-fd4153631289	{"action":"login","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-06 01:32:02.402082+00	
00000000-0000-0000-0000-000000000000	5b911168-47e8-41a2-b9d3-d9640f5b7c26	{"action":"login","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-06 01:32:39.949084+00	
00000000-0000-0000-0000-000000000000	76852cdc-e99f-4031-bfa5-f1f43d0994f9	{"action":"login","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-06 01:32:49.132793+00	
00000000-0000-0000-0000-000000000000	048c7cb7-a869-47bb-9858-a475400ea25e	{"action":"login","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-06 01:34:10.485254+00	
00000000-0000-0000-0000-000000000000	47d7fce2-2076-4bd1-be58-a9c3d6d65ca2	{"action":"login","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-06 01:34:54.191238+00	
00000000-0000-0000-0000-000000000000	46fbd9f7-94f7-4217-a044-1c29c63d605d	{"action":"token_refreshed","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-06-06 14:31:06.105968+00	
00000000-0000-0000-0000-000000000000	5ed767f9-f178-47d0-9263-bd4331573943	{"action":"token_revoked","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-06-06 14:31:06.112079+00	
00000000-0000-0000-0000-000000000000	05fdc097-276b-4e82-b2aa-2698c4f00b19	{"action":"token_refreshed","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-06-07 14:31:22.209024+00	
00000000-0000-0000-0000-000000000000	eaa9f21e-ed10-4a19-b325-ee147208c1e7	{"action":"token_revoked","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-06-07 14:31:22.21404+00	
00000000-0000-0000-0000-000000000000	dcc9a9a6-f3cb-442c-bf3f-0c1661ea1c83	{"action":"logout","actor_id":"c7d77522-9932-4b68-af8f-045320465847","actor_username":"siranjeevi2004k@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-06-07 15:05:57.969188+00	
00000000-0000-0000-0000-000000000000	cecc34e4-a379-4427-9496-502b491ce35d	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"siranjeevi2004k@gmail.com","user_id":"c7d77522-9932-4b68-af8f-045320465847","user_phone":""}}	2024-06-07 15:20:24.128969+00	
00000000-0000-0000-0000-000000000000	5dd1a15f-8804-4d60-8b73-9ed14fa0d355	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"siran9500@gmail.com","user_id":"5fcef4a3-f597-4556-855a-179cc6bf229a","user_phone":""}}	2024-06-07 15:39:52.079152+00	
00000000-0000-0000-0000-000000000000	b3607957-faca-4651-8e7c-1eac9766ba19	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"siran9500@gmail.com","user_id":"5fcef4a3-f597-4556-855a-179cc6bf229a","user_phone":""}}	2024-06-07 15:41:09.924742+00	
00000000-0000-0000-0000-000000000000	799ac68e-292a-44e0-a4a7-724b16f76add	{"action":"user_confirmation_requested","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-07 15:56:50.520262+00	
00000000-0000-0000-0000-000000000000	9d8cdcf6-9633-44df-8442-20d707bb0574	{"action":"user_signedup","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"team"}	2024-06-07 15:59:23.146105+00	
00000000-0000-0000-0000-000000000000	24ab61c4-dc32-4729-828c-dc2f44dadd5f	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 15:59:37.478994+00	
00000000-0000-0000-0000-000000000000	5550476e-4059-4892-b0c3-c504fd6d37c9	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:00:16.330994+00	
00000000-0000-0000-0000-000000000000	89e62b18-14af-4274-91ee-ac82cec88ba8	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:06:07.640293+00	
00000000-0000-0000-0000-000000000000	22da8ce0-d89a-40b2-bbaf-e0c0a7c39882	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:06:14.203188+00	
00000000-0000-0000-0000-000000000000	33caf348-9732-4e5a-83cd-56058e5f133a	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:06:52.864629+00	
00000000-0000-0000-0000-000000000000	8f2a0f3d-4091-4a8b-8052-176b290e1633	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:07:02.305655+00	
00000000-0000-0000-0000-000000000000	85deab64-e52f-4a28-8178-28e24b4de53d	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:08:25.492911+00	
00000000-0000-0000-0000-000000000000	3386ddc9-63e3-4790-8c5b-012464706712	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:08:58.720215+00	
00000000-0000-0000-0000-000000000000	060ff7ea-2592-446a-a807-aac3092eaa6f	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 05:41:01.198012+00	
00000000-0000-0000-0000-000000000000	f261b104-19f2-4875-b751-2c3a710d2689	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:09:26.265393+00	
00000000-0000-0000-0000-000000000000	1cd5cd84-3de8-4692-81d0-ae890d233330	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:09:48.879906+00	
00000000-0000-0000-0000-000000000000	c7fd3a4c-a9ef-4de4-b2e4-97762a38f5d8	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:10:28.919459+00	
00000000-0000-0000-0000-000000000000	a277b11c-2f94-4055-8c81-bac64f246fe3	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:10:35.559574+00	
00000000-0000-0000-0000-000000000000	0eb4dcfa-a040-46a6-9811-d890dcb01864	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:11:06.214731+00	
00000000-0000-0000-0000-000000000000	f0a39f10-08ce-4f40-97bb-a8e28ea55c8e	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:11:21.55399+00	
00000000-0000-0000-0000-000000000000	5e179fee-0675-4add-b112-38dd0a74c547	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:12:38.881888+00	
00000000-0000-0000-0000-000000000000	665953cb-1381-47ae-bd8b-e1a30ce31372	{"action":"logout","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 16:12:46.407734+00	
00000000-0000-0000-0000-000000000000	9e1e7e85-fec3-45df-9361-49164d472ecd	{"action":"login","actor_id":"b23dbcf4-5212-47d0-9926-a346e9870375","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 16:26:28.097142+00	
00000000-0000-0000-0000-000000000000	344c4642-736b-43f6-a589-2a31d94d7cba	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"siranjeevik22it@srishakthi.ac.in","user_id":"b23dbcf4-5212-47d0-9926-a346e9870375","user_phone":""}}	2024-06-07 17:01:26.886715+00	
00000000-0000-0000-0000-000000000000	9bf68cc2-d539-497a-bdef-8959084e4551	{"action":"user_confirmation_requested","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-07 17:02:26.174789+00	
00000000-0000-0000-0000-000000000000	bdc8ea08-98b8-41b7-b84a-8d133be4cf64	{"action":"user_signedup","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"team"}	2024-06-07 17:03:04.950936+00	
00000000-0000-0000-0000-000000000000	532ea4b7-e3bb-4d37-8c58-b15bbfc0ece8	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 17:03:16.675062+00	
00000000-0000-0000-0000-000000000000	8e745da6-5432-4350-a270-c12b6038e989	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 17:19:59.868513+00	
00000000-0000-0000-0000-000000000000	54445a4d-c167-49e8-af67-bddab4cbf683	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-07 17:20:18.948967+00	
00000000-0000-0000-0000-000000000000	86120d62-b0e3-466d-878d-b293b10f171f	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-07 17:20:27.565696+00	
00000000-0000-0000-0000-000000000000	f85101c6-13cc-4265-af01-197fa6f976c7	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-14 11:00:02.21729+00	
00000000-0000-0000-0000-000000000000	59a00b5f-04a9-4cc1-930a-7336f7458eff	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-14 11:00:02.229878+00	
00000000-0000-0000-0000-000000000000	b65d5815-8605-4d38-89c7-0c1cf8ee4722	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 05:32:12.651596+00	
00000000-0000-0000-0000-000000000000	b5c30763-f4a9-4be6-b703-6a7dc7a7952b	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 05:32:12.658748+00	
00000000-0000-0000-0000-000000000000	ef312c3f-0c29-40bd-b6e0-ef61c09d3322	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 09:04:46.323815+00	
00000000-0000-0000-0000-000000000000	95fa8995-59dc-45d9-af59-4f7a2149e8fe	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 09:04:46.327822+00	
00000000-0000-0000-0000-000000000000	122fbbe6-1af0-4068-85a1-6f88ba434a19	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-15 09:11:07.407529+00	
00000000-0000-0000-0000-000000000000	b61f547c-2d03-47fe-9b34-d62f302095e1	{"action":"user_confirmation_requested","actor_id":"bc68a295-2894-4aba-9afd-c25648e81424","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-06-15 09:11:48.041083+00	
00000000-0000-0000-0000-000000000000	50a3e8f4-d11b-4a28-896f-1b6520336c93	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"siranjeevi@siet.ac.in","user_id":"bc68a295-2894-4aba-9afd-c25648e81424","user_phone":""}}	2024-06-15 09:12:50.665066+00	
00000000-0000-0000-0000-000000000000	bfcba0bc-3f39-4d20-89a4-4bb9c53f3dec	{"action":"user_signedup","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-06-15 09:15:15.689902+00	
00000000-0000-0000-0000-000000000000	c152748f-0a9d-4c08-8c73-5a6df5af3d89	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-15 09:15:15.701001+00	
00000000-0000-0000-0000-000000000000	9cae206f-3d66-49a8-8540-7e78d7d1a629	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-15 09:15:29.447827+00	
00000000-0000-0000-0000-000000000000	61f4a3d9-5174-4a90-babe-ab4bf9330976	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-15 09:19:09.725344+00	
00000000-0000-0000-0000-000000000000	b0065737-06ab-4697-9ff5-5b8404d387db	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-15 09:25:30.462935+00	
00000000-0000-0000-0000-000000000000	77c3f68a-78a2-4127-9bb8-9e4daa604518	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-15 09:30:51.001835+00	
00000000-0000-0000-0000-000000000000	5d59a6c9-4785-4bbe-9c96-7a1a24369772	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 10:38:32.12512+00	
00000000-0000-0000-0000-000000000000	780f6d48-820a-4129-ac96-a86b1b2ccdef	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 10:38:32.126902+00	
00000000-0000-0000-0000-000000000000	7ec5caf7-81f7-42cd-9e24-a271fbd90eae	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-15 11:28:05.123633+00	
00000000-0000-0000-0000-000000000000	57524111-714f-46fc-a972-7b9653098e93	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-15 11:28:38.260611+00	
00000000-0000-0000-0000-000000000000	76a3bad2-edc2-4d0b-8d86-c033e5b1c35b	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 12:28:01.177474+00	
00000000-0000-0000-0000-000000000000	3497b74e-44d8-4a49-ba99-2e4d4925946b	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 12:28:01.178915+00	
00000000-0000-0000-0000-000000000000	16beec40-aba2-4a3b-a69b-088e6e62615f	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 14:48:46.500039+00	
00000000-0000-0000-0000-000000000000	9f5b3882-1501-4a16-bc08-63dccc44d222	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-15 14:48:46.502328+00	
00000000-0000-0000-0000-000000000000	f1b6823f-e5d3-44ec-929a-09fcc0f73a71	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 04:28:43.722052+00	
00000000-0000-0000-0000-000000000000	41386b20-f449-4c91-9285-ac9ba17ce862	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 04:28:43.726166+00	
00000000-0000-0000-0000-000000000000	11b48186-3016-4b63-9a52-46ef25b96dff	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-16 05:17:07.63743+00	
00000000-0000-0000-0000-000000000000	b1162f94-2995-4994-bcf3-982ab0d8da8d	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-16 05:18:07.222932+00	
00000000-0000-0000-0000-000000000000	18047d78-d5c4-4001-8b0d-c804cdacc71c	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 06:26:53.211858+00	
00000000-0000-0000-0000-000000000000	8e3edc07-d6f6-49c5-940f-5833a85d74c1	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 06:26:53.213598+00	
00000000-0000-0000-0000-000000000000	e21d2f35-385d-44b9-857a-075de13659d0	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 07:26:22.149234+00	
00000000-0000-0000-0000-000000000000	d40bc674-9744-4569-bd16-84015e42a025	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 07:26:22.150935+00	
00000000-0000-0000-0000-000000000000	595232a9-58a0-4987-b42d-432a522ff83a	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 09:51:33.052403+00	
00000000-0000-0000-0000-000000000000	64ed7a9c-c284-437f-a51b-15b30d2ac699	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 09:51:33.054167+00	
00000000-0000-0000-0000-000000000000	f09b5679-487a-4ec2-b9c7-66c98325ef70	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 11:43:57.634203+00	
00000000-0000-0000-0000-000000000000	bfe168c3-4e09-494f-9fd1-ed39751069bd	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 11:43:57.636088+00	
00000000-0000-0000-0000-000000000000	3827fa52-288f-4cba-9ce0-2447c2252cee	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 12:43:22.765179+00	
00000000-0000-0000-0000-000000000000	736f8b75-3e1b-47e3-ac12-7965ff89a02a	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 12:43:22.767191+00	
00000000-0000-0000-0000-000000000000	1d314004-eae9-4d75-9c5e-a82263e83db0	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 13:48:03.747422+00	
00000000-0000-0000-0000-000000000000	2898f178-0fee-42a0-8570-4edc1dfd3187	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 13:48:03.749056+00	
00000000-0000-0000-0000-000000000000	2d9a3e73-a32d-4906-802d-35e40b7db394	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-16 14:45:25.311068+00	
00000000-0000-0000-0000-000000000000	1c507096-ca26-4e26-890f-da26a377c603	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 15:28:24.46547+00	
00000000-0000-0000-0000-000000000000	d20901ff-0343-4b8c-9e77-7896dca4f2a6	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-16 15:28:24.467754+00	
00000000-0000-0000-0000-000000000000	53de5f5b-3f7d-4e48-b061-45eab94753d2	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 03:00:51.648203+00	
00000000-0000-0000-0000-000000000000	e2121c4f-7fd6-465a-8f54-2faa491805b7	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 03:00:51.651468+00	
00000000-0000-0000-0000-000000000000	9b1da2bc-d702-4972-9915-bf2df1993c58	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 04:02:07.776877+00	
00000000-0000-0000-0000-000000000000	eddf6370-ff00-4f44-b06b-1203ec7e55df	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 04:02:07.780056+00	
00000000-0000-0000-0000-000000000000	917a67cf-a49f-49ab-b5ff-87c72a83c2d5	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 05:41:01.199611+00	
00000000-0000-0000-0000-000000000000	0a216312-a7f7-4640-9adc-edae10aaf292	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-17 06:39:00.534724+00	
00000000-0000-0000-0000-000000000000	702dcab9-05d5-47b2-a03c-b41d74060013	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-17 06:39:20.855724+00	
00000000-0000-0000-0000-000000000000	f33535ca-c7e9-4f37-a3da-88c50f1c63ee	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"buvanamit@siet.ac.in","user_id":"71575883-9175-498f-8da2-cf6b9bcf74a6","user_phone":""}}	2024-06-17 07:27:58.061865+00	
00000000-0000-0000-0000-000000000000	50c8eae1-f062-4647-a80a-6ec91859b7b1	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 08:37:31.504599+00	
00000000-0000-0000-0000-000000000000	38a56904-85f0-462d-8c80-1df041554b89	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 08:37:31.507808+00	
00000000-0000-0000-0000-000000000000	5083806c-36a2-4b22-84b0-95d407850f6b	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-17 09:32:11.524057+00	
00000000-0000-0000-0000-000000000000	fc860301-01e8-4e25-b017-f8e06a973e7e	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-17 09:32:34.678463+00	
00000000-0000-0000-0000-000000000000	17397a0d-222a-44df-8f26-891e3a28b460	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-17 10:08:16.860516+00	
00000000-0000-0000-0000-000000000000	39937154-3083-43f7-a0c4-5fa334c88999	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-17 10:08:47.27037+00	
00000000-0000-0000-0000-000000000000	1ade976e-a65d-482b-a2ca-3ab82c468cd3	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 11:14:37.835595+00	
00000000-0000-0000-0000-000000000000	74596b42-fcbd-411e-bd04-fb8549c27d00	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-17 11:14:37.836445+00	
00000000-0000-0000-0000-000000000000	fde29d3b-708a-48fa-96f5-af485ed5ea9b	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-18 02:28:22.264792+00	
00000000-0000-0000-0000-000000000000	30b53a78-643f-4f96-ac1b-3e18fc76b7fe	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 05:26:33.627783+00	
00000000-0000-0000-0000-000000000000	eeb2651c-fce5-4ace-86be-027f27323e7c	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 05:26:33.629686+00	
00000000-0000-0000-0000-000000000000	dd0acc64-f9b5-4600-8a7a-6e9dce220c66	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-18 05:34:16.654703+00	
00000000-0000-0000-0000-000000000000	f8b68bea-5374-47e8-bdd1-95a76f6b289f	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-18 05:34:36.796836+00	
00000000-0000-0000-0000-000000000000	e366a0c1-902f-4627-a3eb-ef3e4a089798	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-18 05:36:11.51343+00	
00000000-0000-0000-0000-000000000000	103da74f-f893-4cbf-8d82-87b8410e3221	{"action":"user_signedup","actor_id":"65f4f15f-02b3-45f7-acfb-37cf161870eb","actor_username":"vasanthakrishnans22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-06-18 05:37:11.319835+00	
00000000-0000-0000-0000-000000000000	c032dcf6-bea5-40bf-93ff-fb0f5ba41048	{"action":"login","actor_id":"65f4f15f-02b3-45f7-acfb-37cf161870eb","actor_username":"vasanthakrishnans22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-18 05:37:11.331877+00	
00000000-0000-0000-0000-000000000000	5aab2222-36d4-41e8-a386-fa539d51e7a5	{"action":"login","actor_id":"65f4f15f-02b3-45f7-acfb-37cf161870eb","actor_username":"vasanthakrishnans22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-18 05:37:30.164987+00	
00000000-0000-0000-0000-000000000000	0705e2b2-720b-430b-852d-2cce0f97a8f6	{"action":"logout","actor_id":"65f4f15f-02b3-45f7-acfb-37cf161870eb","actor_username":"vasanthakrishnans22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-18 05:40:30.469455+00	
00000000-0000-0000-0000-000000000000	cee1e246-aacf-44cc-a789-75ae5b365d78	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-18 05:41:03.870503+00	
00000000-0000-0000-0000-000000000000	cde70a52-73a3-478a-af1e-ebfaa97e5525	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 08:34:16.975083+00	
00000000-0000-0000-0000-000000000000	d440882d-5a7d-41f0-adb4-1634299368fa	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 08:34:16.985516+00	
00000000-0000-0000-0000-000000000000	092524d0-68ff-409f-9f9e-aaa0abb26a3a	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 09:33:39.345451+00	
00000000-0000-0000-0000-000000000000	2b02df78-e057-4ff4-8053-17794d80b767	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 09:33:39.348843+00	
00000000-0000-0000-0000-000000000000	5267c31e-82c8-4785-b62c-a8b4d4935529	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 10:44:01.611227+00	
00000000-0000-0000-0000-000000000000	c2a6da49-d677-4854-bb38-1a94aff8e7b9	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 10:44:01.613501+00	
00000000-0000-0000-0000-000000000000	3242f0f2-ea23-48eb-abde-8db33b14f720	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 13:23:13.612973+00	
00000000-0000-0000-0000-000000000000	d4715026-199e-46ab-aa59-c523d4248103	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 13:23:13.615819+00	
00000000-0000-0000-0000-000000000000	e7c080fa-a346-4f21-8221-7efa79c452f9	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 14:24:15.3461+00	
00000000-0000-0000-0000-000000000000	80bb7f7b-a732-4cf6-b301-1b2ab1c52d97	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-18 14:24:15.34788+00	
00000000-0000-0000-0000-000000000000	33ca058a-86fc-4627-aa4f-219690bb206d	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 01:33:45.709788+00	
00000000-0000-0000-0000-000000000000	f673843b-cd22-4d53-b5a6-5668d6863f34	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 01:33:45.716036+00	
00000000-0000-0000-0000-000000000000	ccb729dc-663d-4f60-9378-11a64f173db6	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 05:44:24.701204+00	
00000000-0000-0000-0000-000000000000	b383577e-b016-49d9-a393-9cb1ffccfda7	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 05:44:24.706542+00	
00000000-0000-0000-0000-000000000000	4c58cb06-ddd0-45ad-b5de-0d86a292a472	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 06:03:27.999607+00	
00000000-0000-0000-0000-000000000000	719c5891-6819-4494-be4b-54a5bd38b3b1	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 06:03:28.001488+00	
00000000-0000-0000-0000-000000000000	87a86330-4078-4046-adb5-81bb7fe946d8	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 06:43:49.412485+00	
00000000-0000-0000-0000-000000000000	5fa2cf74-0adc-470a-8f27-cae96c53c642	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 06:43:49.414648+00	
00000000-0000-0000-0000-000000000000	a454d403-fd11-4425-ac20-d1aff95ebeff	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 07:44:38.92546+00	
00000000-0000-0000-0000-000000000000	bf19618b-f784-4741-93f3-c60f98df7190	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 07:44:38.928383+00	
00000000-0000-0000-0000-000000000000	aff569ba-6551-430a-bc38-39bfd2de6e3c	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 08:10:00.38405+00	
00000000-0000-0000-0000-000000000000	5e558581-ebb9-4907-a7b9-7205cb0b90e7	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 08:10:00.38983+00	
00000000-0000-0000-0000-000000000000	cfb20f76-3767-4842-b02f-2ae4e016625f	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 08:46:52.864154+00	
00000000-0000-0000-0000-000000000000	6d5aab74-4a54-4a36-a757-f5bfdfd17e3b	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 08:46:52.867111+00	
00000000-0000-0000-0000-000000000000	65f74efd-a523-449c-96fb-906264161853	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"de2625a6-6260-4488-aa60-c08e37ea9c79","user_phone":""}}	2024-06-19 09:10:11.094721+00	
00000000-0000-0000-0000-000000000000	b9ae2ee5-38e1-4b08-8b9a-6773eb0b4ac9	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"de2625a6-6260-4488-aa60-c08e37ea9c79","user_phone":""}}	2024-06-19 09:15:02.549866+00	
00000000-0000-0000-0000-000000000000	0c0299c6-c7f0-4c0b-978f-40e2b6e73632	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"c219a34b-a371-47b3-99bd-1dfc06a6bbe9","user_phone":""}}	2024-06-19 09:15:13.780483+00	
00000000-0000-0000-0000-000000000000	630fb846-616a-4625-9bf2-5143172a07cb	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"c219a34b-a371-47b3-99bd-1dfc06a6bbe9","user_phone":""}}	2024-06-19 09:22:15.591064+00	
00000000-0000-0000-0000-000000000000	0f7cb533-665e-43bc-8ac4-e17d39052f5a	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"e628f831-4d05-45c2-8fe4-3b1539e333e4","user_phone":""}}	2024-06-19 09:22:33.294253+00	
00000000-0000-0000-0000-000000000000	8c075c8e-20b3-44be-b0ba-ec887a0ace01	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"e628f831-4d05-45c2-8fe4-3b1539e333e4","user_phone":""}}	2024-06-19 09:22:59.787718+00	
00000000-0000-0000-0000-000000000000	416a16db-de00-4319-ae50-bc80164a2f7c	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@sri.ac.in","user_id":"edbb86de-77e4-4a16-b92c-3062cf5df61e","user_phone":""}}	2024-06-19 09:23:49.810454+00	
00000000-0000-0000-0000-000000000000	1e5c22a2-168d-4ea7-9aa3-37099968902d	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@sri.ac.in","user_id":"edbb86de-77e4-4a16-b92c-3062cf5df61e","user_phone":""}}	2024-06-19 09:24:19.328769+00	
00000000-0000-0000-0000-000000000000	7affe126-d033-4782-8e96-9eb306b9459c	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@srishakhi.ac.in","user_id":"2083b2af-6175-4c1e-b695-74760085db0d","user_phone":""}}	2024-06-19 09:28:50.937425+00	
00000000-0000-0000-0000-000000000000	1827a177-9315-4a50-bf05-6eefb4346511	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@srishakhi.ac.in","user_id":"2083b2af-6175-4c1e-b695-74760085db0d","user_phone":""}}	2024-06-19 09:29:01.703734+00	
00000000-0000-0000-0000-000000000000	d260add8-e64a-4529-87f2-67e3cab681ad	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"magibalans22it@siet.ac.in","user_id":"ac109399-ad4b-44f3-82f9-b887130a50d7","user_phone":""}}	2024-06-19 09:35:23.062362+00	
00000000-0000-0000-0000-000000000000	5f57c32b-62b2-4de5-937d-abdc53813f48	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 09:53:18.703185+00	
00000000-0000-0000-0000-000000000000	87bee7b2-4723-4143-bb1f-300660ce9170	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 09:53:18.706676+00	
00000000-0000-0000-0000-000000000000	a858aa9a-c053-4388-aa4b-5607a04423ba	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 10:54:19.524782+00	
00000000-0000-0000-0000-000000000000	c9746844-537d-46fd-a096-405c0633fa38	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 10:54:19.526649+00	
00000000-0000-0000-0000-000000000000	c2c33cc6-e332-4d43-9631-daaea448e824	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 11:54:50.306538+00	
00000000-0000-0000-0000-000000000000	05497f49-3b3a-49d1-b77e-a1871a64d202	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 11:54:50.308334+00	
00000000-0000-0000-0000-000000000000	71144c00-8c7e-4051-b18f-d85d6962df43	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 13:00:29.667917+00	
00000000-0000-0000-0000-000000000000	a41dae0d-e72b-4a93-9e74-3976b4ada991	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 13:00:29.66997+00	
00000000-0000-0000-0000-000000000000	5bfa33bc-33e2-4380-b2d4-bf7bbd63ccf5	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 13:59:58.107504+00	
00000000-0000-0000-0000-000000000000	da312908-51d5-41cf-bdf2-fe171b7a018b	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 13:59:58.109833+00	
00000000-0000-0000-0000-000000000000	856ed897-1649-412b-a7d1-70123afed4b5	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 14:59:34.069638+00	
00000000-0000-0000-0000-000000000000	712197e4-7c84-4ff2-810c-5d4c8565b15e	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 14:59:34.071768+00	
00000000-0000-0000-0000-000000000000	aff32427-b682-4c3d-bfa1-2da4359df905	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 15:59:10.952439+00	
00000000-0000-0000-0000-000000000000	005a8835-c418-4de1-9da7-4748dabfe473	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-19 15:59:10.954705+00	
00000000-0000-0000-0000-000000000000	d628d2c5-54b8-4cc9-92f2-8e1014b9ea11	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 06:36:48.452999+00	
00000000-0000-0000-0000-000000000000	88cfbb5e-8e41-4bcc-99ac-dc544d6f3cbf	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 06:36:48.458622+00	
00000000-0000-0000-0000-000000000000	8ffe7a37-d0ca-4c88-aa88-f7e65226265a	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 08:24:38.340646+00	
00000000-0000-0000-0000-000000000000	aacb9299-2277-4c52-9a46-c8eb82ec66df	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 08:24:38.345871+00	
00000000-0000-0000-0000-000000000000	4889d88b-310b-4a05-a0e3-a36298cf0608	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 08:31:41.043143+00	
00000000-0000-0000-0000-000000000000	30693803-05c5-44d0-8b20-b50a33c2f664	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 08:31:41.047199+00	
00000000-0000-0000-0000-000000000000	26b345fe-b8cd-441e-82f6-a4780f8da777	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-20 08:48:24.146399+00	
00000000-0000-0000-0000-000000000000	fb9187c7-b2e4-4923-890e-b86fa7696135	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 14:06:03.668048+00	
00000000-0000-0000-0000-000000000000	7f444998-6c1e-4309-9177-45e5b333663a	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-20 14:06:03.679435+00	
00000000-0000-0000-0000-000000000000	1cdfd065-f38e-48f8-b47f-1f846d1b4bd6	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 09:38:13.853778+00	
00000000-0000-0000-0000-000000000000	e6a7f070-c8db-4589-b587-59c9b5c16f51	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 09:38:13.864822+00	
00000000-0000-0000-0000-000000000000	18ddd652-c29c-4249-a26e-ee94a8b55db6	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 09:39:22.995481+00	
00000000-0000-0000-0000-000000000000	9936e389-b9a5-4531-83b9-2bb9fa4282f6	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 09:39:22.996391+00	
00000000-0000-0000-0000-000000000000	aba54642-9bdf-46ec-aa6c-9f3caa7e4ec5	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 10:44:31.734913+00	
00000000-0000-0000-0000-000000000000	136dca70-9be2-4d07-9a7c-02a5ac79528e	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 10:44:31.73855+00	
00000000-0000-0000-0000-000000000000	d0158fe9-1068-42e1-aa66-9423c62ff3d5	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 10:44:49.172543+00	
00000000-0000-0000-0000-000000000000	9b844a8d-dbf2-4f8d-90db-5b2cdf683410	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 10:44:49.173101+00	
00000000-0000-0000-0000-000000000000	39d9908e-1f24-49c9-b2d5-4e4f7feaae01	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 13:59:46.468412+00	
00000000-0000-0000-0000-000000000000	32c00e3c-ded2-490d-a5c9-a0be64749fd8	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 13:59:46.473165+00	
00000000-0000-0000-0000-000000000000	ae77768f-b368-4d43-be29-4e15b1fbdccc	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-21 14:00:11.025664+00	
00000000-0000-0000-0000-000000000000	976cd049-332d-4e96-a53c-b91cf3dced64	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-21 14:00:40.599945+00	
00000000-0000-0000-0000-000000000000	9cf60677-0668-4489-9f21-49546905df75	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-21 14:12:17.130031+00	
00000000-0000-0000-0000-000000000000	e266cf30-73c5-461c-93d1-26ace09a015f	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-21 14:12:42.455458+00	
00000000-0000-0000-0000-000000000000	96817639-17bb-4951-8906-cde539268d40	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 15:54:59.706106+00	
00000000-0000-0000-0000-000000000000	9f2e4580-fa36-47c1-848b-c0eb1b266037	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-21 15:54:59.708574+00	
00000000-0000-0000-0000-000000000000	891efeb6-6ea8-43d2-8f15-9001afb85f5d	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 01:42:07.964889+00	
00000000-0000-0000-0000-000000000000	65e5afe3-47a2-4312-bf94-48a5740ffe38	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 01:42:07.967907+00	
00000000-0000-0000-0000-000000000000	bc5995cb-fc1a-4a64-9697-504188b84ef8	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 02:53:50.987634+00	
00000000-0000-0000-0000-000000000000	6841c2f3-6243-4810-91cd-498f706c918f	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 02:53:50.991578+00	
00000000-0000-0000-0000-000000000000	c3679e91-df2f-42c1-8c64-5e4801d070f7	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 03:55:36.363769+00	
00000000-0000-0000-0000-000000000000	6adb2e4d-b814-4b1d-8fa6-8546511d0503	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 03:55:36.365222+00	
00000000-0000-0000-0000-000000000000	13fbc7ea-7b9d-4fdc-bdf8-1700080959be	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 06:59:41.663772+00	
00000000-0000-0000-0000-000000000000	212ad41a-0ffb-4a4d-8ef5-81a75b92a12a	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 06:59:41.672536+00	
00000000-0000-0000-0000-000000000000	e0a39a4e-e2f2-46e0-afb7-1061b459a5e9	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 07:59:15.625495+00	
00000000-0000-0000-0000-000000000000	ed4a2350-bd6d-4035-997c-b28b8ec2bd4e	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 07:59:15.627607+00	
00000000-0000-0000-0000-000000000000	ab81c24f-cd36-4166-b2fb-9f82a5cf01c0	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 09:50:39.709696+00	
00000000-0000-0000-0000-000000000000	eedce10e-20b9-438a-9a4d-64b1f0f4a5d8	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 09:50:39.711892+00	
00000000-0000-0000-0000-000000000000	4a27ac1e-2804-4e64-872a-d221983ca720	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 12:05:25.040451+00	
00000000-0000-0000-0000-000000000000	c61a33bd-4d91-41d7-95fc-69b1c4fcb078	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 12:05:25.042398+00	
00000000-0000-0000-0000-000000000000	28fa841d-369a-455c-a321-25acdf0311a7	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 13:38:33.062552+00	
00000000-0000-0000-0000-000000000000	f1b482d0-3f91-4ba1-a512-1645f279d180	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 13:38:33.063348+00	
00000000-0000-0000-0000-000000000000	04c8dac6-b77a-444d-b15c-bde25f48f17d	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 14:56:04.715714+00	
00000000-0000-0000-0000-000000000000	2ab3cf7d-f4d0-4a52-9de5-50af5a0099a1	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 14:56:04.717113+00	
00000000-0000-0000-0000-000000000000	1fa3ef43-ce3d-471d-b2f5-fa40a08b5d47	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-23 15:01:10.017058+00	
00000000-0000-0000-0000-000000000000	615ef511-141f-4106-a21b-7942f61145e9	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-23 15:01:28.032706+00	
00000000-0000-0000-0000-000000000000	3d8f2bf3-3579-4cfd-bc43-bb2683f338cf	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 16:29:19.949891+00	
00000000-0000-0000-0000-000000000000	f314daa7-33eb-4409-bec7-ade80aa7f61c	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-23 16:29:19.950789+00	
00000000-0000-0000-0000-000000000000	8d81011b-39bf-4345-9fd9-32a7ffd84644	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-23 17:25:28.714537+00	
00000000-0000-0000-0000-000000000000	cfa537d1-70dc-415f-a3ea-c94a6a523e5c	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-23 17:25:55.206927+00	
00000000-0000-0000-0000-000000000000	007fc5e1-7cd5-48ef-bb00-3048c868be9b	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-24 14:49:50.492325+00	
00000000-0000-0000-0000-000000000000	b98ec7e2-5d8f-4835-ae2b-7125fbdedae4	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-24 14:49:50.508937+00	
00000000-0000-0000-0000-000000000000	9083ae0d-201b-4c9f-b3cf-ab73cb4608f1	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-24 16:16:43.905542+00	
00000000-0000-0000-0000-000000000000	83f9eb90-2e50-4671-8b91-e1e84cee7c8d	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-24 16:16:43.90917+00	
00000000-0000-0000-0000-000000000000	9ae0b8b2-034b-48a1-b905-91956c1c1ed5	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 00:05:03.668122+00	
00000000-0000-0000-0000-000000000000	879538b7-8688-43a9-959c-0a756ed795ac	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 00:05:03.671916+00	
00000000-0000-0000-0000-000000000000	564c8fed-39b8-42ad-9d09-ab0f947f36b6	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 01:05:52.030229+00	
00000000-0000-0000-0000-000000000000	a5a229f0-899d-47a1-bc9f-67e06984e456	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 01:05:52.033253+00	
00000000-0000-0000-0000-000000000000	b8959472-64fd-4d3f-85e3-566cff0201fb	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 13:23:16.712382+00	
00000000-0000-0000-0000-000000000000	c929ce78-6fc8-4414-9c39-58c040735014	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 13:23:16.722608+00	
00000000-0000-0000-0000-000000000000	fc0641e4-ba07-4756-a975-104dac141441	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 15:09:04.722112+00	
00000000-0000-0000-0000-000000000000	32004e59-f024-4a1f-b1d0-c119b5788a56	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 15:09:04.724231+00	
00000000-0000-0000-0000-000000000000	2877a2c1-60d1-4895-ba86-3237fe059329	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 23:04:30.76867+00	
00000000-0000-0000-0000-000000000000	79c09ca8-e599-42ec-b72f-9b130c050d30	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-25 23:04:30.770783+00	
00000000-0000-0000-0000-000000000000	91814a8f-e903-4678-93e0-a8a09cea4529	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 00:46:03.11669+00	
00000000-0000-0000-0000-000000000000	35a20bf1-65f4-43b5-a250-82cfccb22e6f	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 00:46:03.11882+00	
00000000-0000-0000-0000-000000000000	7b38d339-ff3f-4d48-8edf-a61f8867367c	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 03:03:53.649271+00	
00000000-0000-0000-0000-000000000000	71d4844a-65ea-4638-b3fb-b7032a9c5870	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 03:03:53.657199+00	
00000000-0000-0000-0000-000000000000	72930a34-cac9-45fb-9b94-fedb40c96e8b	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 04:48:57.487274+00	
00000000-0000-0000-0000-000000000000	146ab1a8-1319-4a2d-b720-c158f224c0ab	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 04:48:57.490631+00	
00000000-0000-0000-0000-000000000000	54dedd3d-3853-4c2e-a17b-bca58fdb3dd4	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 05:48:37.181906+00	
00000000-0000-0000-0000-000000000000	c84f96af-4a78-4deb-8ca2-eeef90867211	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 05:48:37.184934+00	
00000000-0000-0000-0000-000000000000	a456a2f3-2dd4-4f4c-bd11-19175b5e749b	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 06:54:19.087115+00	
00000000-0000-0000-0000-000000000000	29e1df4e-e51e-4a24-a8e6-d1ae1595294e	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 06:54:19.096628+00	
00000000-0000-0000-0000-000000000000	f42c012f-d10d-4e06-a075-8c63c49067fd	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 08:07:53.819928+00	
00000000-0000-0000-0000-000000000000	4449cf79-bf1d-4ea7-ae3d-f515b232d233	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 08:07:53.822648+00	
00000000-0000-0000-0000-000000000000	d52d32c6-12f7-4d3f-949d-c701c17e915c	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 09:07:48.33964+00	
00000000-0000-0000-0000-000000000000	4b279c40-7957-45ed-873c-18ecdb7b6684	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 09:07:48.342819+00	
00000000-0000-0000-0000-000000000000	056bc6d5-29e5-4de9-8a42-23fdb422d09a	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 10:07:09.274502+00	
00000000-0000-0000-0000-000000000000	e5875720-38e9-430f-a567-f173037c1d43	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 10:07:09.278415+00	
00000000-0000-0000-0000-000000000000	f8a0b093-3960-4f9f-ae4b-874716ef76ed	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 10:21:21.560506+00	
00000000-0000-0000-0000-000000000000	07528c9a-f03d-4c92-9e74-71ba5f49c496	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 10:21:21.563046+00	
00000000-0000-0000-0000-000000000000	4c8074a2-ee94-4724-892d-367e37971500	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 22:38:50.889752+00	
00000000-0000-0000-0000-000000000000	b3d6adbd-6647-4a86-8c84-09ebde9c7db1	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 22:38:50.895654+00	
00000000-0000-0000-0000-000000000000	52401222-04be-4fe9-a6a7-83d5a32ac081	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 23:38:27.609243+00	
00000000-0000-0000-0000-000000000000	1107136f-edf7-4033-8023-a1b26ecafb3c	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-26 23:38:27.613053+00	
00000000-0000-0000-0000-000000000000	da045831-601b-4e4f-baf3-4eba52cd5f56	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-27 07:47:18.399024+00	
00000000-0000-0000-0000-000000000000	72698b2d-d652-4da2-bfe3-38715fa99ee4	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-27 07:47:18.411248+00	
00000000-0000-0000-0000-000000000000	341e6f02-5406-4be6-a6c6-cdbef4a2f313	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-27 09:27:36.982284+00	
00000000-0000-0000-0000-000000000000	0245f012-dc08-4a07-8ad3-93870bb99726	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-27 09:27:36.985051+00	
00000000-0000-0000-0000-000000000000	95a244dd-ae68-4336-9f1f-8fa8094d0f6e	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-27 10:27:17.599176+00	
00000000-0000-0000-0000-000000000000	bda88745-738e-42a2-aa35-4103df7f6b42	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-27 10:27:17.602367+00	
00000000-0000-0000-0000-000000000000	dd2934bb-7755-4bfe-a136-9002c652f781	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-28 14:49:18.443042+00	
00000000-0000-0000-0000-000000000000	d285e5e2-e56c-4d36-a2e5-e1b83b162d91	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-28 14:49:18.451681+00	
00000000-0000-0000-0000-000000000000	5a1002c7-8dc4-4bf9-b38f-f3fefafa6279	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 05:00:49.565111+00	
00000000-0000-0000-0000-000000000000	3ea86b09-9798-49bf-805b-a89580755411	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 05:00:49.583998+00	
00000000-0000-0000-0000-000000000000	b1481080-f416-4d08-bbe5-8d22366c07ea	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 06:00:10.487603+00	
00000000-0000-0000-0000-000000000000	3a5c98e2-5ecc-4953-9fbf-7f90410cd6a1	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 06:00:10.490819+00	
00000000-0000-0000-0000-000000000000	51c13fc0-56f3-4014-b1d9-f12dd59580ca	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 07:21:10.253724+00	
00000000-0000-0000-0000-000000000000	ebfdb6c1-a609-43f1-b48b-ab6852194288	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 07:21:10.259514+00	
00000000-0000-0000-0000-000000000000	48a16e0d-8312-4c71-8186-dbe656628e3b	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 08:20:40.27485+00	
00000000-0000-0000-0000-000000000000	14bebce1-3904-4ec2-ac7d-c92686dac302	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 08:20:40.279263+00	
00000000-0000-0000-0000-000000000000	51ad801f-9a34-4560-9dd8-3b8fb4eb72eb	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 11:03:51.312393+00	
00000000-0000-0000-0000-000000000000	d3f49db8-073b-48d5-b1f8-0dedfa2e5d84	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 11:03:51.315426+00	
00000000-0000-0000-0000-000000000000	a361aee2-0e38-4e03-a157-db70a922a1ea	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 12:03:24.194662+00	
00000000-0000-0000-0000-000000000000	bb5b80e5-8656-46c6-be59-6065856f08ff	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 12:03:24.196308+00	
00000000-0000-0000-0000-000000000000	2e5a2320-5e4b-47a9-9709-d85f10c30db9	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 13:03:28.958902+00	
00000000-0000-0000-0000-000000000000	b0a71c75-c548-46d7-a1dd-fd6e3067d136	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 13:03:28.961592+00	
00000000-0000-0000-0000-000000000000	4115809b-a434-4057-aa9e-1f725950df74	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 14:19:15.901222+00	
00000000-0000-0000-0000-000000000000	5312b2e3-4c4c-4f87-afcf-44d1a5745a7d	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 14:19:15.902813+00	
00000000-0000-0000-0000-000000000000	6dd7530f-1f0b-4c89-b99b-e8240066a0fa	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 16:59:04.032395+00	
00000000-0000-0000-0000-000000000000	649b1e9c-d364-4c4a-80eb-3f5928be4929	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-29 16:59:04.035931+00	
00000000-0000-0000-0000-000000000000	6cbfb884-98b1-4f54-b0eb-420b4211a2f3	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 02:42:35.928853+00	
00000000-0000-0000-0000-000000000000	528f094a-c9c5-46ac-b48d-d90461b316f6	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 02:42:35.938144+00	
00000000-0000-0000-0000-000000000000	f55de312-3aaf-4ba6-85c3-5490bcf47d41	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 03:41:57.531414+00	
00000000-0000-0000-0000-000000000000	62add7b6-b295-46f3-9dc6-354a5e35baaf	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 03:41:57.538+00	
00000000-0000-0000-0000-000000000000	62b0eac9-8234-4b78-a3c8-64ae49ed5ef2	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"akash22it@srishakthi.ac.in","user_id":"16fb0bd9-ca59-47df-9d3e-e89b2abc3744","user_phone":""}}	2024-06-30 03:42:46.917622+00	
00000000-0000-0000-0000-000000000000	07c4a906-351c-4bb2-99cb-038760b770cf	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 05:09:33.461482+00	
00000000-0000-0000-0000-000000000000	d8f69a5d-fcbb-4da9-b555-3278a00b7582	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 05:09:33.467881+00	
00000000-0000-0000-0000-000000000000	7d960fda-fa06-4274-a9de-9d010059b4fb	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 06:08:59.323432+00	
00000000-0000-0000-0000-000000000000	1ebe894c-4689-438d-8c0e-d12d317c9dc2	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 06:08:59.325886+00	
00000000-0000-0000-0000-000000000000	33e5b39c-d2e8-4603-ad90-3278ecda3579	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 07:08:39.085861+00	
00000000-0000-0000-0000-000000000000	62006f04-bc6d-48bf-b0ed-c8ef52e96cb3	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 07:08:39.088122+00	
00000000-0000-0000-0000-000000000000	43db13f5-3e57-4270-ba5c-f7176fb4e717	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 08:08:16.087168+00	
00000000-0000-0000-0000-000000000000	d76fed3c-db42-4905-82e7-00049d9548bc	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 08:08:16.089322+00	
00000000-0000-0000-0000-000000000000	48077338-bbc3-4422-8fc2-95a2c75f4f61	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 09:08:04.133105+00	
00000000-0000-0000-0000-000000000000	9d98ff02-17af-4ce0-88e1-4c3b42cefcd6	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 09:08:04.136048+00	
00000000-0000-0000-0000-000000000000	007b2d2c-e8c3-4afa-adce-f2f37004b56c	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 10:23:04.710488+00	
00000000-0000-0000-0000-000000000000	331a6990-e19e-4576-ae13-a718f10464fd	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 10:23:04.713364+00	
00000000-0000-0000-0000-000000000000	68c94bee-cb88-4a69-b93d-e13367263dfe	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 11:22:53.36557+00	
00000000-0000-0000-0000-000000000000	a6978bf3-b42e-4fef-af50-b630922aa11c	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 11:22:53.36727+00	
00000000-0000-0000-0000-000000000000	f49443bd-eaff-478d-ab32-9bcd945482f9	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 12:22:36.369974+00	
00000000-0000-0000-0000-000000000000	8706e004-0431-4c1c-a556-237ac585025f	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 12:22:36.37188+00	
00000000-0000-0000-0000-000000000000	50a07e1b-b4e9-4eba-80cb-860f63e418c8	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 13:22:48.560619+00	
00000000-0000-0000-0000-000000000000	ca85dbf1-7e0a-40fa-96e0-28f820d07bc4	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 13:22:48.56358+00	
00000000-0000-0000-0000-000000000000	fd36a272-bdbd-45ce-abf2-1ac04f0d7deb	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 14:27:35.253319+00	
00000000-0000-0000-0000-000000000000	df48e14f-a725-4ede-a42e-ac78dbe383bc	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 14:27:35.258739+00	
00000000-0000-0000-0000-000000000000	38ccf709-0a76-4321-86af-467b32f17b79	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 16:18:20.063234+00	
00000000-0000-0000-0000-000000000000	d1893ec9-c325-43ec-b658-ef59dbe81ec3	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 16:18:20.06664+00	
00000000-0000-0000-0000-000000000000	9d303d8b-2a8e-4835-a34c-c1cd92a184ae	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-30 17:35:46.910848+00	
00000000-0000-0000-0000-000000000000	fdd2f7cc-a94a-432e-a9e8-19d5ec61a5b6	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 22:24:36.716085+00	
00000000-0000-0000-0000-000000000000	84be49b3-8816-4cab-ad1c-9430ca448ede	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 22:24:36.723798+00	
00000000-0000-0000-0000-000000000000	e41c91a5-0029-425b-9565-180ff81b3e4b	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 22:34:06.814565+00	
00000000-0000-0000-0000-000000000000	b810670b-35aa-4657-986d-ff3946dc9b9f	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-06-30 22:34:06.817001+00	
00000000-0000-0000-0000-000000000000	083b0524-5be2-4b9d-808c-61dff873dff7	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-30 22:34:13.749143+00	
00000000-0000-0000-0000-000000000000	7ed6a78d-57fa-47a1-bf6e-85ffe7af5859	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-30 22:34:35.48183+00	
00000000-0000-0000-0000-000000000000	661e9a09-b1e4-4f15-b26c-7571e7511f29	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-30 22:46:20.733896+00	
00000000-0000-0000-0000-000000000000	ce64af7b-35a8-4d34-b491-54237c4a7f9b	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-06-30 23:19:53.404492+00	
00000000-0000-0000-0000-000000000000	f0c944b1-123a-49a3-a5ae-4a129ed1d758	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-06-30 23:20:17.913407+00	
00000000-0000-0000-0000-000000000000	3d186624-5eb7-48b2-aca5-26307f1bbf4e	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 00:23:01.655538+00	
00000000-0000-0000-0000-000000000000	776792e2-61dc-45c5-803b-3bbfbae64c47	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 00:23:01.65691+00	
00000000-0000-0000-0000-000000000000	64230932-28ec-4618-97bc-e165582b27cb	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 00:35:45.305148+00	
00000000-0000-0000-0000-000000000000	9604a8b7-0685-431e-a45d-9049a175b2f2	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 00:35:45.307276+00	
00000000-0000-0000-0000-000000000000	82970a53-65d2-4191-8735-532b256a9753	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-07-01 00:48:34.372688+00	
00000000-0000-0000-0000-000000000000	af4b0ea2-1f00-4fc1-95b3-81dc943e59aa	{"action":"login","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-07-01 00:57:04.896108+00	
00000000-0000-0000-0000-000000000000	1e7665bd-9aae-4193-a6dc-ee69f93054e1	{"action":"logout","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"account"}	2024-07-01 01:01:51.039845+00	
00000000-0000-0000-0000-000000000000	39f73bcd-cd2f-4674-a9dd-e1cf8624184c	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-07-01 01:02:26.223586+00	
00000000-0000-0000-0000-000000000000	935f4973-8837-43af-9cef-c6bd1e03aefc	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 01:23:14.357468+00	
00000000-0000-0000-0000-000000000000	3070787c-98e9-4b1b-9469-fe3e13e4640b	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 01:23:14.359592+00	
00000000-0000-0000-0000-000000000000	60456a24-119b-4ef7-a70c-618088a359fd	{"action":"token_refreshed","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 03:44:16.13415+00	
00000000-0000-0000-0000-000000000000	ec254695-b2b5-4448-a38d-3fcf6d016b4a	{"action":"token_revoked","actor_id":"de94f1d9-6364-4191-8108-be58c5ff7ba1","actor_username":"siranjeevik22it@srishakthi.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 03:44:16.136185+00	
00000000-0000-0000-0000-000000000000	04647853-6c99-4733-a1f9-ce74e39d6cee	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 03:46:12.962879+00	
00000000-0000-0000-0000-000000000000	348ff507-2e23-46bc-8b52-a28c6fef097b	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 03:46:12.965253+00	
00000000-0000-0000-0000-000000000000	426cc7ef-24f0-4859-8b48-43664cc5c2d7	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 05:26:48.889243+00	
00000000-0000-0000-0000-000000000000	7fb4e9cb-2f66-4ddc-836a-be3e426f20c3	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-07-01 05:26:48.89075+00	
00000000-0000-0000-0000-000000000000	c6d28b92-4567-40ab-b327-785691042ff9	{"action":"login","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-08-06 07:26:12.861901+00	
00000000-0000-0000-0000-000000000000	e050f147-663f-4d24-97ae-bfba8bce255d	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-10-07 08:03:33.897193+00	
00000000-0000-0000-0000-000000000000	5a01412e-38fe-4f36-9f0d-ef9ce69e81d0	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-10-07 08:03:33.90769+00	
00000000-0000-0000-0000-000000000000	77c1687f-4bc3-4603-b587-773307c0388a	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-10-07 11:36:15.642649+00	
00000000-0000-0000-0000-000000000000	618669ac-af76-46c5-a69e-939e4d1e72cc	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-10-07 11:36:15.644434+00	
00000000-0000-0000-0000-000000000000	26bcdf04-eee2-4e6c-91ba-ee78fd6525f3	{"action":"token_refreshed","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-10-22 03:48:13.636135+00	
00000000-0000-0000-0000-000000000000	03500236-6584-46e1-9fb9-3c02288e1c9f	{"action":"token_revoked","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"token"}	2024-10-22 03:48:13.64268+00	
00000000-0000-0000-0000-000000000000	d59b7024-dcc5-4728-84b5-7dede5f8ee0b	{"action":"logout","actor_id":"9c762b71-72b5-4b35-aaae-89ed74d00e45","actor_username":"siranjeevi@siet.ac.in","actor_via_sso":false,"log_type":"account"}	2024-10-22 03:49:35.103823+00	
00000000-0000-0000-0000-000000000000	bd25ed48-46d7-4a87-a3b7-2b12acd7bcec	{"action":"user_signedup","actor_id":"776b133c-bf31-4a42-a3c3-492e979c8e9d","actor_username":"aaa@siet.ac.in","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-10-22 03:50:26.161095+00	
00000000-0000-0000-0000-000000000000	505bd8c7-91a0-4aeb-b907-c11136141b39	{"action":"login","actor_id":"776b133c-bf31-4a42-a3c3-492e979c8e9d","actor_username":"aaa@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-10-22 03:50:26.166509+00	
00000000-0000-0000-0000-000000000000	a5c05697-5d29-46bf-8c3a-342c84805bdc	{"action":"login","actor_id":"776b133c-bf31-4a42-a3c3-492e979c8e9d","actor_username":"aaa@siet.ac.in","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-10-22 03:50:42.027038+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
c92c3cbe-6e59-48c1-b1bb-9d550a79ac10	c7d77522-9932-4b68-af8f-045320465847	7a5eb3eb-19b2-42b9-ac8f-469682369bfe	s256	Rj5IYGTJGDpIYBfrzAbVB2k8AT8fgEe-GhHL0wCh3XY	email			2024-06-06 00:56:24.913866+00	2024-06-06 00:56:24.913866+00	email/signup	\N
8e5f4996-62d9-4135-8b8a-bd013cf8b7f0	c7d77522-9932-4b68-af8f-045320465847	5fd4021a-7b67-46f6-9250-a7169501b297	s256	ssfWz7BJBHfMgXvDBQ2wvDLhedWTFCdq1r6YVKwRfVM	email			2024-06-06 00:58:52.744825+00	2024-06-06 00:58:52.744825+00	email/signup	\N
7dd9623b-c71e-41fe-b891-34da31f83a5f	c7d77522-9932-4b68-af8f-045320465847	f3cc29a0-a38d-4bb3-bde5-2b31b169bcd9	s256	B3j9L1O298MoVgqpU5YUeLop5gYZBepsjaMzwp5jbmg	email			2024-06-06 00:59:38.690759+00	2024-06-06 00:59:38.690759+00	email/signup	\N
f100e195-0092-411c-b255-d5c09fc88e49	c7d77522-9932-4b68-af8f-045320465847	0f818d74-a7c3-4c39-a59b-c572177154f9	s256	om_l-EpOW-i9y-5jX7Q88bPS-lQQljQaQIVe_9bx4R0	email			2024-06-06 01:00:06.655756+00	2024-06-06 01:00:06.655756+00	email/signup	\N
0b58c58c-2f20-40b8-a12c-11f29d8de228	c7d77522-9932-4b68-af8f-045320465847	46d860d6-28ce-435f-9300-e58c021d5599	s256	ni3kEFMINO5hgV6OdhtChl74m8RabMVmokLOAu045fU	email			2024-06-06 01:02:22.843019+00	2024-06-06 01:02:45.745968+00	email/signup	2024-06-06 01:02:45.745927+00
9fc94ca3-131b-4632-94b6-adad0f27f602	b23dbcf4-5212-47d0-9926-a346e9870375	59516501-b7de-4a34-8cb9-9396d83254e9	s256	qbzevUN9DD-e_MYpLNdzl6qngeqsxrdvRr3xrGDSc78	email			2024-06-07 15:56:50.522556+00	2024-06-07 15:59:23.152172+00	email/signup	2024-06-07 15:59:23.152134+00
cff84edb-1f27-4c04-9cf0-d51ce2c4ed96	de94f1d9-6364-4191-8108-be58c5ff7ba1	febc79ba-1e88-4d32-9f3d-bda4305234da	s256	oeRet4Rug94WmSje8_9RmhePbsvS3BPM5D6LYzIr4ys	email			2024-06-07 17:02:26.175307+00	2024-06-07 17:03:04.956445+00	email/signup	2024-06-07 17:03:04.956391+00
216a15ff-7f4c-4b8b-9c15-d30e72f6a07f	bc68a295-2894-4aba-9afd-c25648e81424	9811cd15-7645-4913-ba7e-1b0d5430141a	s256	2alNiftELH_YHOHUj8t-7hXz_znyFrF30kCfvrZRooU	email			2024-06-15 09:11:48.042832+00	2024-06-15 09:11:48.042832+00	email/signup	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	6b9b02ae-9e3e-47a2-8d49-8528529905c5	authenticated	authenticated	mahalakshmipmat@siet.ac.in	$2a$10$rgfxnue.KleU9fcSYgV3F.858zxEWQRhqObUOjBTJyDMasZY4BGB6	2024-04-22 18:23:04.089148+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:23:04.081196+00	2024-04-22 18:23:04.089961+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	b566d98a-186b-4e67-aaaf-c8b6d89fb612	authenticated	authenticated	sugashinikit@siet.ac.in	$2a$10$4uIHWpwOI9lJGHwa0SGZi.o098arZqXmSfz0OyL7Ts9rsuVw2Cooi	2024-04-22 18:23:47.23344+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:23:47.229912+00	2024-04-22 18:23:47.233636+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d302f9ac-078a-4c19-b488-f0d2c58e8792	authenticated	authenticated	chandanagri@siet.ac.in	$2a$10$reGW2Le0gd1NebfYTLYtAOAsEvV1xU8wLrYDg6pRh2wYNT2IeXOU.	2024-04-22 18:40:20.717636+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:40:20.715203+00	2024-04-22 18:40:20.717843+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	a0fbb030-d436-48cb-89d2-341c2957975f	authenticated	authenticated	deepamit@siet.ac.in	$2a$10$LBEk4WIf158jYBFf6.3RWeq53jv7GPuVHj/MscwRQsjezKQ4Avj56	2024-04-22 18:38:22.543097+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:38:22.537157+00	2024-04-22 18:38:22.543298+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	authenticated	authenticated	dheekshaece@siet.ac.in	$2a$10$bqMM7IArdHnZLquZqZ2IDejJEDpAdCDeH9BJMN46H9DJ6pCLN7xem	2024-04-22 18:38:38.549458+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:38:38.546913+00	2024-04-22 18:38:38.549656+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	authenticated	authenticated	varunkumarbit@siet.ac.in	$2a$10$QSnrfMjxeO8z4edlH4lve.4URAOLSJEQU/jpx5fupZqzLkG3zz.5K	2024-04-22 18:38:57.435548+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:38:57.43288+00	2024-04-22 18:38:57.435756+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	authenticated	authenticated	sathyatit@siet.ac.in	$2a$10$jhEVanMH.Qs0gSl0liXh.eYU0fL6hQxpgn9YEMpswPzwiksjO1bEC	2024-04-22 18:39:29.414698+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:39:29.410189+00	2024-04-22 18:39:29.414891+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	authenticated	authenticated	gayathridevimit@siet.ac.in	$2a$10$7qthyXFWikJE4CkYhxHoc.tBRdIONTq6gHJpzTsCKs/7k7m.gssIi	2024-04-22 18:39:51.642959+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:39:51.640451+00	2024-04-22 18:39:51.643157+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ae232278-39cc-43b4-86a0-1426c21ea957	authenticated	authenticated	suganthicdc@siet.ac.in	$2a$10$kji6tDeH.kDC7bOdiRIqMeXdkyv6IffkBIzJK9WN9ZYs5Hj.YpO36	2024-04-22 18:40:07.14692+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-04-22 18:40:07.144309+00	2024-04-22 18:40:07.147111+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	71575883-9175-498f-8da2-cf6b9bcf74a6	authenticated	authenticated	buvanamit@siet.ac.in	$2a$10$NozTksXlwJrcq14bM1qI0.BkU4g/R8ncLsNdQ1YRX2JL5tzL6Nj6C	2024-06-17 07:27:58.070045+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-06-17 07:27:58.029357+00	2024-06-17 07:27:58.070261+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	65f4f15f-02b3-45f7-acfb-37cf161870eb	authenticated	authenticated	vasanthakrishnans22it@srishakthi.ac.in	$2a$10$Xwhwd48t1JTtUBKOjezZ4uq3CWMDenXCnNNM97glfK7FwT.edi1xy	2024-06-18 05:37:11.321318+00	\N		\N		\N			\N	2024-06-18 05:37:30.165741+00	{"provider": "email", "providers": ["email"]}	{"sub": "65f4f15f-02b3-45f7-acfb-37cf161870eb", "name": "Vk madura", "role": "Student", "email": "vasanthakrishnans22it@srishakthi.ac.in", "email_verified": false, "phone_verified": false}	\N	2024-06-18 05:37:11.228907+00	2024-06-18 05:37:30.167595+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ac109399-ad4b-44f3-82f9-b887130a50d7	authenticated	authenticated	magibalans22it@siet.ac.in	$2a$10$6aQsy17FJ2L4d6uuFH3YH.GcYmv6a6yV1G5LHCGIuKqeCvK8pANNm	2024-06-19 09:35:23.068307+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-06-19 09:35:23.056496+00	2024-06-19 09:35:23.068529+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	16fb0bd9-ca59-47df-9d3e-e89b2abc3744	authenticated	authenticated	akash22it@srishakthi.ac.in	$2a$10$fliPqA011W8RQauIl5j.4ulrUBu6fDxQ66xZvvwIMAWYcusd8.Uj2	2024-06-30 03:42:46.922539+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{}	\N	2024-06-30 03:42:46.889475+00	2024-06-30 03:42:46.923332+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	de94f1d9-6364-4191-8108-be58c5ff7ba1	authenticated	authenticated	siranjeevik22it@srishakthi.ac.in	$2a$10$pfX0yR/yyynHJ5mGLlqh3uGLfpkFUCXeB5JIRchNJcB53EpsAz5mC	2024-06-07 17:03:04.951523+00	\N		2024-06-07 17:02:26.176554+00		\N			\N	2024-07-01 00:57:04.898207+00	{"provider": "email", "providers": ["email"]}	{"sub": "de94f1d9-6364-4191-8108-be58c5ff7ba1", "name": "siranjeevik", "role": "Student", "email": "siranjeevik22it@srishakthi.ac.in", "email_verified": false, "phone_verified": false}	\N	2024-06-07 17:02:26.161084+00	2024-07-01 03:44:16.14279+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	9c762b71-72b5-4b35-aaae-89ed74d00e45	authenticated	authenticated	siranjeevi@siet.ac.in	$2a$10$kLdIO0GvP..sQIweIYmf5eOmMWrwvyQ3cDIrmWk1f1Gc/8k9432D.	2024-06-15 09:15:15.693764+00	\N		\N		\N			\N	2024-08-06 07:26:12.882987+00	{"provider": "email", "providers": ["email"]}	{"sub": "9c762b71-72b5-4b35-aaae-89ed74d00e45", "name": "Prof. Siranjeevi", "role": "Faculty", "email": "siranjeevi@siet.ac.in", "email_verified": false, "phone_verified": false}	\N	2024-06-15 09:15:15.669362+00	2024-10-22 03:48:13.650867+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	776b133c-bf31-4a42-a3c3-492e979c8e9d	authenticated	authenticated	aaa@siet.ac.in	$2a$10$Q4/lpd3/HeLxJO3rZOkVTO.kjgRnebfoJIQ3lgm5NuoDKPcWuS/By	2024-10-22 03:50:26.161613+00	\N		\N		\N			\N	2024-10-22 03:50:42.028969+00	{"provider": "email", "providers": ["email"]}	{"sub": "776b133c-bf31-4a42-a3c3-492e979c8e9d", "name": "aaa", "role": "Faculty", "email": "aaa@siet.ac.in", "email_verified": false, "phone_verified": false}	\N	2024-10-22 03:50:26.146222+00	2024-10-22 03:50:42.031292+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
6b9b02ae-9e3e-47a2-8d49-8528529905c5	6b9b02ae-9e3e-47a2-8d49-8528529905c5	{"sub": "6b9b02ae-9e3e-47a2-8d49-8528529905c5", "email": "mahalakshmipmat@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:23:04.083991+00	2024-04-22 18:23:04.084043+00	2024-04-22 18:23:04.084043+00	9363adff-9ae8-4218-97b9-c9c9fe52b00c
b566d98a-186b-4e67-aaaf-c8b6d89fb612	b566d98a-186b-4e67-aaaf-c8b6d89fb612	{"sub": "b566d98a-186b-4e67-aaaf-c8b6d89fb612", "email": "sugashinikit@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:23:47.231353+00	2024-04-22 18:23:47.231401+00	2024-04-22 18:23:47.231401+00	bda02e77-3f96-463e-bdd5-9c871fb175f1
a0fbb030-d436-48cb-89d2-341c2957975f	a0fbb030-d436-48cb-89d2-341c2957975f	{"sub": "a0fbb030-d436-48cb-89d2-341c2957975f", "email": "deepamit@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:38:22.541227+00	2024-04-22 18:38:22.541278+00	2024-04-22 18:38:22.541278+00	3835a4dc-fddb-42de-b517-e7f2f08810bf
d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	{"sub": "d41723c1-6efd-4c78-a2b1-c0348a9a1ed2", "email": "dheekshaece@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:38:38.547832+00	2024-04-22 18:38:38.547897+00	2024-04-22 18:38:38.547897+00	65d106cf-a6b2-4318-85ff-60581b5e3782
39a20171-b808-4d1e-8d19-5fa0f6ec62a4	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	{"sub": "39a20171-b808-4d1e-8d19-5fa0f6ec62a4", "email": "varunkumarbit@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:38:57.433812+00	2024-04-22 18:38:57.433859+00	2024-04-22 18:38:57.433859+00	b2f1c093-5fb5-41ce-a60d-227ddffc0ecf
2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	{"sub": "2b42fc81-3c0a-4c21-ad01-8bd72683ad0a", "email": "sathyatit@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:39:29.411129+00	2024-04-22 18:39:29.412944+00	2024-04-22 18:39:29.412944+00	cffbb93e-f155-4e87-96cb-eb16defa9c00
bd939c19-d0ad-4dcb-bd90-f25abd7fa753	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	{"sub": "bd939c19-d0ad-4dcb-bd90-f25abd7fa753", "email": "gayathridevimit@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:39:51.641353+00	2024-04-22 18:39:51.641405+00	2024-04-22 18:39:51.641405+00	6eae07b7-cfd0-4b02-bdca-c7119b97965e
ae232278-39cc-43b4-86a0-1426c21ea957	ae232278-39cc-43b4-86a0-1426c21ea957	{"sub": "ae232278-39cc-43b4-86a0-1426c21ea957", "email": "suganthicdc@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:40:07.14527+00	2024-04-22 18:40:07.14532+00	2024-04-22 18:40:07.14532+00	6d6decad-8284-4833-913e-38509deb01ff
d302f9ac-078a-4c19-b488-f0d2c58e8792	d302f9ac-078a-4c19-b488-f0d2c58e8792	{"sub": "d302f9ac-078a-4c19-b488-f0d2c58e8792", "email": "chandanagri@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-04-22 18:40:20.71613+00	2024-04-22 18:40:20.716177+00	2024-04-22 18:40:20.716177+00	c92a6a12-b044-4155-889e-d3d28e5147e3
de94f1d9-6364-4191-8108-be58c5ff7ba1	de94f1d9-6364-4191-8108-be58c5ff7ba1	{"sub": "de94f1d9-6364-4191-8108-be58c5ff7ba1", "name": "siranjeevik", "role": "Student", "email": "siranjeevik22it@srishakthi.ac.in", "email_verified": false, "phone_verified": false}	email	2024-06-07 17:02:26.171807+00	2024-06-07 17:02:26.171854+00	2024-06-07 17:02:26.171854+00	a6205376-ae80-4ac3-82e3-bf50d25ced72
9c762b71-72b5-4b35-aaae-89ed74d00e45	9c762b71-72b5-4b35-aaae-89ed74d00e45	{"sub": "9c762b71-72b5-4b35-aaae-89ed74d00e45", "name": "Prof. Siranjeevi", "role": "Faculty", "email": "siranjeevi@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-06-15 09:15:15.682601+00	2024-06-15 09:15:15.682651+00	2024-06-15 09:15:15.682651+00	f7364ab0-09fd-44d3-a20c-819b0f6bb70e
71575883-9175-498f-8da2-cf6b9bcf74a6	71575883-9175-498f-8da2-cf6b9bcf74a6	{"sub": "71575883-9175-498f-8da2-cf6b9bcf74a6", "email": "buvanamit@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-06-17 07:27:58.053577+00	2024-06-17 07:27:58.053643+00	2024-06-17 07:27:58.053643+00	0f964eba-accd-4e21-aa0b-9fb0148045cc
65f4f15f-02b3-45f7-acfb-37cf161870eb	65f4f15f-02b3-45f7-acfb-37cf161870eb	{"sub": "65f4f15f-02b3-45f7-acfb-37cf161870eb", "name": "Vk madura", "role": "Student", "email": "vasanthakrishnans22it@srishakthi.ac.in", "email_verified": false, "phone_verified": false}	email	2024-06-18 05:37:11.313003+00	2024-06-18 05:37:11.313068+00	2024-06-18 05:37:11.313068+00	2e9a4a28-0947-4fca-9794-1a7e14f19017
ac109399-ad4b-44f3-82f9-b887130a50d7	ac109399-ad4b-44f3-82f9-b887130a50d7	{"sub": "ac109399-ad4b-44f3-82f9-b887130a50d7", "email": "magibalans22it@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-06-19 09:35:23.060011+00	2024-06-19 09:35:23.060064+00	2024-06-19 09:35:23.060064+00	6a30fd7d-7d4e-4fb4-b88f-6edd3b940e61
16fb0bd9-ca59-47df-9d3e-e89b2abc3744	16fb0bd9-ca59-47df-9d3e-e89b2abc3744	{"sub": "16fb0bd9-ca59-47df-9d3e-e89b2abc3744", "email": "akash22it@srishakthi.ac.in", "email_verified": false, "phone_verified": false}	email	2024-06-30 03:42:46.91052+00	2024-06-30 03:42:46.910585+00	2024-06-30 03:42:46.910585+00	d404f1cb-3233-40ce-bf2c-2e7c3f3a4fff
776b133c-bf31-4a42-a3c3-492e979c8e9d	776b133c-bf31-4a42-a3c3-492e979c8e9d	{"sub": "776b133c-bf31-4a42-a3c3-492e979c8e9d", "name": "aaa", "role": "Faculty", "email": "aaa@siet.ac.in", "email_verified": false, "phone_verified": false}	email	2024-10-22 03:50:26.156159+00	2024-10-22 03:50:26.156221+00	2024-10-22 03:50:26.156221+00	588e31a7-ecd9-4d46-8932-b0645757c0f0
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
2b106435-9f06-4244-b0a1-570a5c4fec61	de94f1d9-6364-4191-8108-be58c5ff7ba1	2024-06-30 22:34:35.482589+00	2024-06-30 22:34:35.482589+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.197.77.166	\N
27fd619c-b62d-4d2b-abc7-ec8efc839c85	de94f1d9-6364-4191-8108-be58c5ff7ba1	2024-06-07 17:03:16.677071+00	2024-06-07 17:03:16.677071+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.208.25.35	\N
625b2086-29d4-4b92-9586-4cadd4295a2e	de94f1d9-6364-4191-8108-be58c5ff7ba1	2024-06-30 22:46:20.736686+00	2024-07-01 00:35:45.313806+00	\N	aal1	\N	2024-07-01 00:35:45.313729	Dart/3.4 (dart:io)	106.197.77.166	\N
a56c61c5-d57a-4117-ab12-5565a38c8526	de94f1d9-6364-4191-8108-be58c5ff7ba1	2024-07-01 00:48:34.37761+00	2024-07-01 00:48:34.37761+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.197.77.166	\N
7a1c00be-a692-48f2-8636-1c61d1ddd40b	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-06-15 09:15:15.701615+00	2024-06-15 09:15:15.701615+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.211.219.79	\N
5e09b3b2-4100-4775-b461-d75897de218e	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-06-15 09:15:29.44852+00	2024-06-15 09:15:29.44852+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.211.219.79	\N
b9b75d1b-064f-450b-9f03-12d978be8327	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-06-15 09:19:09.728361+00	2024-06-15 09:19:09.728361+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.211.219.79	\N
1219ac50-ca9e-4ead-9a47-02cceb663f00	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-06-15 09:25:30.463883+00	2024-06-15 09:25:30.463883+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.211.219.79	\N
92cf26c6-17d8-46e8-9c1f-fd3b259593f1	de94f1d9-6364-4191-8108-be58c5ff7ba1	2024-06-30 23:20:17.915757+00	2024-07-01 03:44:16.145576+00	\N	aal1	\N	2024-07-01 03:44:16.1455	Dart/3.4 (dart:io)	110.172.151.105	\N
b5bf90e5-28f7-4880-9fe9-d95893ad65b5	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-07-01 01:02:26.224268+00	2024-07-01 05:26:48.896627+00	\N	aal1	\N	2024-07-01 05:26:48.896555	Dart/3.4 (dart:io)	110.172.151.105	\N
24936071-170d-4a65-99da-b50525968f5f	de94f1d9-6364-4191-8108-be58c5ff7ba1	2024-06-20 08:48:24.148417+00	2024-06-26 10:07:09.290549+00	\N	aal1	\N	2024-06-26 10:07:09.290464	Dart/3.4 (dart:io)	106.211.219.98	\N
500aaf54-d796-4cee-b41c-74650b3d633b	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-06-16 14:45:25.314185+00	2024-06-16 14:45:25.314185+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.211.219.79	\N
c6c226ba-e391-4a23-b735-6ced0dd66df3	9c762b71-72b5-4b35-aaae-89ed74d00e45	2024-06-18 02:28:22.272349+00	2024-06-20 08:24:38.360673+00	\N	aal1	\N	2024-06-20 08:24:38.3606	Dart/3.4 (dart:io)	110.172.151.105	\N
816c602a-10e3-43ae-834a-e0f943e9b402	65f4f15f-02b3-45f7-acfb-37cf161870eb	2024-06-18 05:37:11.333131+00	2024-06-18 05:37:11.333131+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	110.172.151.105	\N
5586eb6e-3e5e-4543-9180-44d5688e95ec	776b133c-bf31-4a42-a3c3-492e979c8e9d	2024-10-22 03:50:26.167133+00	2024-10-22 03:50:26.167133+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.197.109.182	\N
a9056564-11c1-4c50-802a-2200441153bb	776b133c-bf31-4a42-a3c3-492e979c8e9d	2024-10-22 03:50:42.029055+00	2024-10-22 03:50:42.029055+00	\N	aal1	\N	\N	Dart/3.4 (dart:io)	106.197.109.182	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
27fd619c-b62d-4d2b-abc7-ec8efc839c85	2024-06-07 17:03:16.679949+00	2024-06-07 17:03:16.679949+00	password	3b1a8d2a-ccba-48af-8b69-c1f9ed249e6d
7a1c00be-a692-48f2-8636-1c61d1ddd40b	2024-06-15 09:15:15.711119+00	2024-06-15 09:15:15.711119+00	password	28879bd2-25e2-4d21-a400-e27b97856341
5e09b3b2-4100-4775-b461-d75897de218e	2024-06-15 09:15:29.450419+00	2024-06-15 09:15:29.450419+00	password	ec48f7e1-d6a1-41af-92ec-2761a8b4ad38
b9b75d1b-064f-450b-9f03-12d978be8327	2024-06-15 09:19:09.734635+00	2024-06-15 09:19:09.734635+00	password	8dca5eff-5fe4-43ec-9f3d-93656605d8cf
1219ac50-ca9e-4ead-9a47-02cceb663f00	2024-06-15 09:25:30.467162+00	2024-06-15 09:25:30.467162+00	password	90ea4c7c-c163-465e-8886-12730afee665
500aaf54-d796-4cee-b41c-74650b3d633b	2024-06-16 14:45:25.324111+00	2024-06-16 14:45:25.324111+00	password	7caaf6bf-90a0-463d-8077-e24e774fc1cb
c6c226ba-e391-4a23-b735-6ced0dd66df3	2024-06-18 02:28:22.3058+00	2024-06-18 02:28:22.3058+00	password	366c0e93-08f9-42ef-a6fd-071092e817e9
816c602a-10e3-43ae-834a-e0f943e9b402	2024-06-18 05:37:11.338117+00	2024-06-18 05:37:11.338117+00	password	e6889ca9-25b4-48c6-a5cb-a74ce186f55a
24936071-170d-4a65-99da-b50525968f5f	2024-06-20 08:48:24.157357+00	2024-06-20 08:48:24.157357+00	password	0e294655-cb73-49da-b0a0-a91f0f72e2c8
2b106435-9f06-4244-b0a1-570a5c4fec61	2024-06-30 22:34:35.491976+00	2024-06-30 22:34:35.491976+00	password	cf3570c6-6d1f-4f01-93e8-d7ff46da4132
625b2086-29d4-4b92-9586-4cadd4295a2e	2024-06-30 22:46:20.743958+00	2024-06-30 22:46:20.743958+00	password	04cd0a1c-6921-48ff-8be6-35b732218f5c
92cf26c6-17d8-46e8-9c1f-fd3b259593f1	2024-06-30 23:20:17.921247+00	2024-06-30 23:20:17.921247+00	password	39ed0dde-7214-4ed4-b37f-0b3e1d47377b
a56c61c5-d57a-4117-ab12-5565a38c8526	2024-07-01 00:48:34.384303+00	2024-07-01 00:48:34.384303+00	password	19a3aa75-648b-4adf-be2c-79dfc125a2f1
b5bf90e5-28f7-4880-9fe9-d95893ad65b5	2024-07-01 01:02:26.228734+00	2024-07-01 01:02:26.228734+00	password	83348161-c85f-4ec1-b22b-19220b0dfbae
5586eb6e-3e5e-4543-9180-44d5688e95ec	2024-10-22 03:50:26.170241+00	2024-10-22 03:50:26.170241+00	password	ed189812-bcb2-4e67-a21d-54c7b3d4c792
a9056564-11c1-4c50-802a-2200441153bb	2024-10-22 03:50:42.031626+00	2024-10-22 03:50:42.031626+00	password	27c29249-413a-4ba1-970f-051e71d39582
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	153	0ho-V-C64YtXpouMMFF_GA	de94f1d9-6364-4191-8108-be58c5ff7ba1	f	2024-07-01 00:48:34.380419+00	2024-07-01 00:48:34.380419+00	\N	a56c61c5-d57a-4117-ab12-5565a38c8526
00000000-0000-0000-0000-000000000000	151	qYljO8X-b3fT0Md8b29b0w	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-07-01 00:23:01.659805+00	2024-07-01 01:23:14.360723+00	I92iKY-yqTnVb9s-SgcX8Q	92cf26c6-17d8-46e8-9c1f-fd3b259593f1
00000000-0000-0000-0000-000000000000	157	WiCUi3eAdFiTlujsxAsJIw	de94f1d9-6364-4191-8108-be58c5ff7ba1	f	2024-07-01 03:44:16.139049+00	2024-07-01 03:44:16.139049+00	jYSP4DhgCKCQ_gFxuFtAIw	92cf26c6-17d8-46e8-9c1f-fd3b259593f1
00000000-0000-0000-0000-000000000000	155	cEGtIM-IB7rfmoeRUSQ-zg	9c762b71-72b5-4b35-aaae-89ed74d00e45	t	2024-07-01 01:02:26.225674+00	2024-07-01 03:46:12.965803+00	\N	b5bf90e5-28f7-4880-9fe9-d95893ad65b5
00000000-0000-0000-0000-000000000000	159	Be5UWiTzdVJHd2oB9W8jkA	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-07-01 05:26:48.892719+00	2024-07-01 05:26:48.892719+00	0-xYo40um6SStaUfOWGM4A	b5bf90e5-28f7-4880-9fe9-d95893ad65b5
00000000-0000-0000-0000-000000000000	54	_i4jkjzuaSiMIG30-zMaCQ	65f4f15f-02b3-45f7-acfb-37cf161870eb	f	2024-06-18 05:37:11.334575+00	2024-06-18 05:37:11.334575+00	\N	816c602a-10e3-43ae-834a-e0f943e9b402
00000000-0000-0000-0000-000000000000	51	KCurg1AVkLEZBfoNbMX0fg	9c762b71-72b5-4b35-aaae-89ed74d00e45	t	2024-06-18 02:28:22.285816+00	2024-06-18 10:44:01.631867+00	\N	c6c226ba-e391-4a23-b735-6ced0dd66df3
00000000-0000-0000-0000-000000000000	18	kp8iK2T3NMMsCxgeVO7OKA	de94f1d9-6364-4191-8108-be58c5ff7ba1	f	2024-06-07 17:03:16.678025+00	2024-06-07 17:03:16.678025+00	\N	27fd619c-b62d-4d2b-abc7-ec8efc839c85
00000000-0000-0000-0000-000000000000	24	nLYn3Si2CfoIauAY_QFx2Q	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-06-15 09:15:15.705836+00	2024-06-15 09:15:15.705836+00	\N	7a1c00be-a692-48f2-8636-1c61d1ddd40b
00000000-0000-0000-0000-000000000000	25	6sV20ojvEow-dpBPEGyRsQ	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-06-15 09:15:29.449255+00	2024-06-15 09:15:29.449255+00	\N	5e09b3b2-4100-4775-b461-d75897de218e
00000000-0000-0000-0000-000000000000	26	4c_kKsLmVF1Qv9-qgKXX7Q	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-06-15 09:19:09.730658+00	2024-06-15 09:19:09.730658+00	\N	b9b75d1b-064f-450b-9f03-12d978be8327
00000000-0000-0000-0000-000000000000	27	fn6MAJjjGfEw_DQFpraD5g	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-06-15 09:25:30.465102+00	2024-06-15 09:25:30.465102+00	\N	1219ac50-ca9e-4ead-9a47-02cceb663f00
00000000-0000-0000-0000-000000000000	59	-hQ2xoEMO4AEWNWHCrCuVg	9c762b71-72b5-4b35-aaae-89ed74d00e45	t	2024-06-18 10:44:01.633525+00	2024-06-19 06:03:28.002051+00	KCurg1AVkLEZBfoNbMX0fg	c6c226ba-e391-4a23-b735-6ced0dd66df3
00000000-0000-0000-0000-000000000000	64	5xv2MAhOLlEgX1L1Pb5hGg	9c762b71-72b5-4b35-aaae-89ed74d00e45	t	2024-06-19 06:03:28.004012+00	2024-06-19 08:10:00.390489+00	-hQ2xoEMO4AEWNWHCrCuVg	c6c226ba-e391-4a23-b735-6ced0dd66df3
00000000-0000-0000-0000-000000000000	41	TJP2Cri74Js3OQ4MAJbzTg	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-06-16 14:45:25.320558+00	2024-06-16 14:45:25.320558+00	\N	500aaf54-d796-4cee-b41c-74650b3d633b
00000000-0000-0000-0000-000000000000	67	8UYKb9edywCT49pmK499MA	9c762b71-72b5-4b35-aaae-89ed74d00e45	t	2024-06-19 08:10:00.395372+00	2024-06-20 08:24:38.346476+00	5xv2MAhOLlEgX1L1Pb5hGg	c6c226ba-e391-4a23-b735-6ced0dd66df3
00000000-0000-0000-0000-000000000000	77	q6mIpmeebMLY0x-VEsryXw	9c762b71-72b5-4b35-aaae-89ed74d00e45	f	2024-06-20 08:24:38.351619+00	2024-06-20 08:24:38.351619+00	8UYKb9edywCT49pmK499MA	c6c226ba-e391-4a23-b735-6ced0dd66df3
00000000-0000-0000-0000-000000000000	83	fdQznidNRBETDaok1fQ2Ug	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-06-21 10:44:31.741756+00	2024-06-26 10:07:09.279079+00	F_tnWLW5Dxq9ZmvUyhciAw	24936071-170d-4a65-99da-b50525968f5f
00000000-0000-0000-0000-000000000000	115	nZ2fbzwD67fFoSmAVC1EXQ	de94f1d9-6364-4191-8108-be58c5ff7ba1	f	2024-06-26 10:07:09.286815+00	2024-06-26 10:07:09.286815+00	fdQznidNRBETDaok1fQ2Ug	24936071-170d-4a65-99da-b50525968f5f
00000000-0000-0000-0000-000000000000	79	6z2pnxf2T2gY_I22PyJlTQ	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-06-20 08:48:24.152112+00	2024-06-21 09:38:13.865382+00	\N	24936071-170d-4a65-99da-b50525968f5f
00000000-0000-0000-0000-000000000000	81	F_tnWLW5Dxq9ZmvUyhciAw	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-06-21 09:38:13.874662+00	2024-06-21 10:44:31.73905+00	6z2pnxf2T2gY_I22PyJlTQ	24936071-170d-4a65-99da-b50525968f5f
00000000-0000-0000-0000-000000000000	150	I92iKY-yqTnVb9s-SgcX8Q	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-06-30 23:20:17.917256+00	2024-07-01 00:23:01.658597+00	\N	92cf26c6-17d8-46e8-9c1f-fd3b259593f1
00000000-0000-0000-0000-000000000000	149	RHsdqGwwIpdfuK-dvHq-vw	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-06-30 22:46:20.739207+00	2024-07-01 00:35:45.3084+00	\N	625b2086-29d4-4b92-9586-4cadd4295a2e
00000000-0000-0000-0000-000000000000	152	1TLzkeJLUnufdlZ_5pwdCg	de94f1d9-6364-4191-8108-be58c5ff7ba1	f	2024-07-01 00:35:45.310219+00	2024-07-01 00:35:45.310219+00	RHsdqGwwIpdfuK-dvHq-vw	625b2086-29d4-4b92-9586-4cadd4295a2e
00000000-0000-0000-0000-000000000000	156	jYSP4DhgCKCQ_gFxuFtAIw	de94f1d9-6364-4191-8108-be58c5ff7ba1	t	2024-07-01 01:23:14.362073+00	2024-07-01 03:44:16.137631+00	qYljO8X-b3fT0Md8b29b0w	92cf26c6-17d8-46e8-9c1f-fd3b259593f1
00000000-0000-0000-0000-000000000000	158	0-xYo40um6SStaUfOWGM4A	9c762b71-72b5-4b35-aaae-89ed74d00e45	t	2024-07-01 03:46:12.968675+00	2024-07-01 05:26:48.891278+00	cEGtIM-IB7rfmoeRUSQ-zg	b5bf90e5-28f7-4880-9fe9-d95893ad65b5
00000000-0000-0000-0000-000000000000	148	_x4UNAuBR54R2cQzsQpMSQ	de94f1d9-6364-4191-8108-be58c5ff7ba1	f	2024-06-30 22:34:35.48993+00	2024-06-30 22:34:35.48993+00	\N	2b106435-9f06-4244-b0a1-570a5c4fec61
00000000-0000-0000-0000-000000000000	164	dBnszIIsvFCUOXt7qamcig	776b133c-bf31-4a42-a3c3-492e979c8e9d	f	2024-10-22 03:50:26.168656+00	2024-10-22 03:50:26.168656+00	\N	5586eb6e-3e5e-4543-9180-44d5688e95ec
00000000-0000-0000-0000-000000000000	165	kwBQYu9a971lt3oYFrxg8g	776b133c-bf31-4a42-a3c3-492e979c8e9d	f	2024-10-22 03:50:42.029854+00	2024-10-22 03:50:42.029854+00	\N	a9056564-11c1-4c50-802a-2200441153bb
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."batches" ("batch_id", "graduation_year", "admission_year", "batch_name") FROM stdin;
2028	2028	2024	Batch 2024-2028
2027	2027	2023	Batch 2023-2027
2026	2026	2022	Batch 2022-2026
2025	2025	2021	Batch 2021-2025
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."classes" ("class_id", "class_name", "class_code", "department_id", "class_advisor_id", "batch", "graduation_year", "lecture_hall", "section", "total_students_present") FROM stdin;
3	2023-27 ITA	23ITA	1	\N	2023-2027	2027	\N	A	0
4	2023-27 ITB	23ITB	1	\N	2023-2027	2027	\N	B	0
5	2023-27 ITC	23ITC	1	\N	2023-2027	2027	\N	C	0
2	2022-26 ITB	22ITB	1	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	2022-2026	2026	LH25	B	63
6	2021-25 ITA	21ITA	1	\N	2021-2025	2025	\N	A	0
1	2022-26 ITA	22ITA	1	71575883-9175-498f-8da2-cf6b9bcf74a6	2022-2026	2026	LH24	A	2
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."departments" ("department_id", "department_name", "department_code", "head_of_department_id", "classes") FROM stdin;
2	Computer Science and Engineering	CSE	\N	\N
3	Electronics and Communication Engineering	ECE	\N	\N
4	Electrical and Electronics Engineering	EEE	\N	\N
5	Civil Engineering	CIVIL	\N	\N
6	Mechanical Engineering	MECH	\N	\N
8	Food Technology	FT	\N	\N
9	Biomedical Engineering	BME	\N	\N
10	Biotechnology	BT	\N	\N
11	Artificial Intelligence and Machine Learning	AIML	\N	\N
13	Cybersecurity	CYBER	\N	\N
12	Artificial Intelligence and Data Science	AIDS	\N	\N
1	Information Technology	IT	9c762b71-72b5-4b35-aaae-89ed74d00e45	{22ITA,22ITB,23ITA,23ITB,23ITC,21ITA}
14	Mathematics	MATHS	\N	\N
15	English	ENG	\N	\N
7	Agriculture Engineering	AGRI	\N	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("user_id", "username", "email", "password_hash", "role", "profile_picture", "bio", "phone_number") FROM stdin;
71402220-5064-0000-0000-000000000000	Mohammed Aslam M	mohammedaslamm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5065-0000-0000-000000000000	Monish P	monishp22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5066-0000-0000-000000000000	Monish S	monishs22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5067-0000-0000-000000000000	Naren Karthikeyan E K	narenkarthikeyanek22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5068-0000-0000-000000000000	Naveen S	naveens22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5069-0000-0000-000000000000	Nishanth M	nishanthm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5070-0000-0000-000000000000	Nivethidha S	nivethidhas22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5071-0000-0000-000000000000	Oviya R	oviyar22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5072-0000-0000-000000000000	Pathmesh G	pathmeshg22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5073-0000-0000-000000000000	Pirathik S V	pirathiksv22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5074-0000-0000-000000000000	Ponnarasu A	ponnarasua22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5075-0000-0000-000000000000	Poovarasu K	poovarasuk22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5076-0000-0000-000000000000	Prabha Sri G	prabhasrig22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5077-0000-0000-000000000000	Priya S	priyas22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5078-0000-0000-000000000000	Priyangha Devi B	priyanghadevib22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5079-0000-0000-000000000000	Puja M S	pujams22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5080-0000-0000-000000000000	Pushpanathan G	pushpanathang22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5081-0000-0000-000000000000	Radhivarma K.S.	radhivarmaks22it@srishakthi.ac.in	\N	Student	\N	\N	\N
2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	Sathya T	sathyatit@siet.ac.in	\N	Faculty	\N	\N	\N
ae232278-39cc-43b4-86a0-1426c21ea957	Suganthi	suganthicdc@siet.ac.in	\N	Faculty	\N	\N	\N
d302f9ac-078a-4c19-b488-f0d2c58e8792	Chandan	chandanagri@siet.ac.in	\N	Faculty	\N	\N	\N
6b9b02ae-9e3e-47a2-8d49-8528529905c5	Mahalakshmi P	mahalakshmipmat@siet.ac.in	\N	Faculty	\N	\N	\N
a0fbb030-d436-48cb-89d2-341c2957975f	Deepa M	deepamit@siet.ac.in	\N	Faculty	\N	\N	\N
d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	Dheeksha	dheekshaece@siet.ac.in	\N	Faculty	\N	\N	\N
b566d98a-186b-4e67-aaaf-c8b6d89fb612	Sugashini K	sugashinikit@siet.ac.in	\N	Faculty	\N	\N	\N
bd939c19-d0ad-4dcb-bd90-f25abd7fa753	Gayathri Devi M	gayathridevimit@siet.ac.in	\N	Faculty	\N	\N	\N
39a20171-b808-4d1e-8d19-5fa0f6ec62a4	Varun Kumar B	varunkumarbit@siet.ac.in	\N	Faculty	\N	\N	\N
71402220-5082-0000-0000-000000000000	Rahill Rifaq L	rahillrifaql22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5083-0000-0000-000000000000	Rahul R	rahulr22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5084-0000-0000-000000000000	Rahul Raaj K	rahulraajk22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5085-0000-0000-000000000000	Raja Imaya Bharathi J	rajaimayabharathij22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5086-0000-0000-000000000000	Rakshitha S.A	rakshithasa22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5087-0000-0000-000000000000	Ravikumar J	ravikumarj22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5088-0000-0000-000000000000	Reena G	reenag22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5089-0000-0000-000000000000	Rinisha Jesline T	rinishajeslinet22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5090-0000-0000-000000000000	Rithika R	rithikar22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5091-0000-0000-000000000000	Rohith Kumar N	rohithkumarn22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5092-0000-0000-000000000000	Rupeshwar S	rupeshwars22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5093-0000-0000-000000000000	Sachin B	sachinb22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5094-0000-0000-000000000000	Sai Subin S V	saisubinsv22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5095-0000-0000-000000000000	Sakthivel S. M	sakthivelsm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5096-0000-0000-000000000000	Salmaan M	salmaanm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5099-0000-0000-000000000000	Sanjay Kumar S	sanjaykumars22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5098-0000-0000-000000000000	Sanjay S	sanjays22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5097-0000-0000-000000000000	Sanjay R	sanjayr22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5100-0000-0000-000000000000	Santhosh M	santhoshm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5101-0000-0000-000000000000	Santhosh Kumar S	santhoshkumars22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5102-0000-0000-000000000000	Shanmathi G	shanmathig22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5103-0000-0000-000000000000	Siddharth A. J	siddharthaj22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5105-0000-0000-000000000000	Siva T	sivat22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5106-0000-0000-000000000000	Siva Muthu E	sivamuthue22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5107-0000-0000-000000000000	Sowndarya V	sowndaryav22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5108-0000-0000-000000000000	Sree Aswath P S	sreeaswathps22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5109-0000-0000-000000000000	Sreenath G	sreenathg22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5110-0000-0000-000000000000	Srinithi R	srinithir22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5111-0000-0000-000000000000	Subash S B	subashsb22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5112-0000-0000-000000000000	Subhiksha S	subhikshas22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5113-0000-0000-000000000000	Udhayasankar R	udhayasankarr22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5114-0000-0000-000000000000	Varshini G	varshinig22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5115-0000-0000-000000000000	Varun D	varund22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5117-0000-0000-000000000000	Vasanthan K.V	vasanthankv22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5118-0000-0000-000000000000	Veeramani S	veeramanis22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5119-0000-0000-000000000000	Vignesh S	vigneshs22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5120-0000-0000-000000000000	Vikash M	vikashm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5121-0000-0000-000000000000	Vikramathithan M	vikramathithanm22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5301-0000-0000-000000000000	Vishnu SV	vishnusv22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5125-0000-0000-000000000000	Yugavanan S	yugavanans22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5124-0000-0000-000000000000	Vishal S K	vishalsk22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5123-0000-0000-000000000000	Vishal P	vishalp22it@srishakthi.ac.in	\N	Student	\N	\N	\N
71402220-5122-0000-0000-000000000000	Vinoth Kumar N	vinothkumarn22it@srishakthi.ac.in	\N	Student	\N	\N	\N
de94f1d9-6364-4191-8108-be58c5ff7ba1	siranjeevik	siranjeevik22it@srishakthi.ac.in	\N	Student	https://dkopowahnjnhqgtcntam.supabase.co/storage/v1/object/public/profile-photos/20220711_135250_edited.jpg	\N	9500378844
71575883-9175-498f-8da2-cf6b9bcf74a6	Buvana M	buvanamit@siet.ac.in	\N	Faculty	\N	\N	\N
65f4f15f-02b3-45f7-acfb-37cf161870eb	Vk madura	vasanthakrishnans22it@srishakthi.ac.in	\N	Student	\N	\N	\N
9c762b71-72b5-4b35-aaae-89ed74d00e45	Dr.Prakash	siranjeevi@siet.ac.in	\N	Faculty	\N	\N	9500378844
ac109399-ad4b-44f3-82f9-b887130a50d7	magibalans22it	magibalans22it@siet.ac.in	\N	Student	\N	\N	\N
16fb0bd9-ca59-47df-9d3e-e89b2abc3744	akash22it	akash22it@srishakthi.ac.in	\N	Student	\N	\N	\N
776b133c-bf31-4a42-a3c3-492e979c8e9d	aaa	aaa@siet.ac.in	\N	Faculty	\N	\N	\N
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."students" ("student_id", "department_name", "graduation_year", "register_number", "roll_number", "section", "semester", "class_code") FROM stdin;
ac109399-ad4b-44f3-82f9-b887130a50d7	Information Technology	2026	714022205058	22IT058	A	4	22ITA
71402220-5064-0000-0000-000000000000	Information Technology	2026	714022205064	22IT064	B	4	22ITB
71402220-5065-0000-0000-000000000000	Information Technology	2026	714022205065	22IT065	B	4	22ITB
71402220-5066-0000-0000-000000000000	Information Technology	2026	714022205066	22IT066	B	4	22ITB
71402220-5067-0000-0000-000000000000	Information Technology	2026	714022205067	22IT067	B	4	22ITB
71402220-5068-0000-0000-000000000000	Information Technology	2026	714022205068	22IT068	B	4	22ITB
71402220-5069-0000-0000-000000000000	Information Technology	2026	714022205069	22IT069	B	4	22ITB
71402220-5070-0000-0000-000000000000	Information Technology	2026	714022205070	22IT070	B	4	22ITB
71402220-5071-0000-0000-000000000000	Information Technology	2026	714022205071	22IT071	B	4	22ITB
71402220-5072-0000-0000-000000000000	Information Technology	2026	714022205072	22IT072	B	4	22ITB
71402220-5073-0000-0000-000000000000	Information Technology	2026	714022205073	22IT073	B	4	22ITB
71402220-5074-0000-0000-000000000000	Information Technology	2026	714022205074	22IT074	B	4	22ITB
71402220-5075-0000-0000-000000000000	Information Technology	2026	714022205075	22IT075	B	4	22ITB
71402220-5076-0000-0000-000000000000	Information Technology	2026	714022205076	22IT076	B	4	22ITB
71402220-5077-0000-0000-000000000000	Information Technology	2026	714022205077	22IT077	B	4	22ITB
71402220-5078-0000-0000-000000000000	Information Technology	2026	714022205078	22IT078	B	4	22ITB
71402220-5079-0000-0000-000000000000	Information Technology	2026	714022205079	22IT079	B	4	22ITB
71402220-5080-0000-0000-000000000000	Information Technology	2026	714022205080	22IT080	B	4	22ITB
71402220-5081-0000-0000-000000000000	Information Technology	2026	714022205081	22IT081	B	4	22ITB
71402220-5082-0000-0000-000000000000	Information Technology	2026	714022205082	22IT082	B	4	22ITB
71402220-5083-0000-0000-000000000000	Information Technology	2026	714022205083	22IT083	B	4	22ITB
71402220-5084-0000-0000-000000000000	Information Technology	2026	714022205084	22IT084	B	4	22ITB
71402220-5085-0000-0000-000000000000	Information Technology	2026	714022205085	22IT085	B	4	22ITB
71402220-5086-0000-0000-000000000000	Information Technology	2026	714022205086	22IT086	B	4	22ITB
71402220-5087-0000-0000-000000000000	Information Technology	2026	714022205087	22IT087	B	4	22ITB
71402220-5088-0000-0000-000000000000	Information Technology	2026	714022205088	22IT088	B	4	22ITB
71402220-5097-0000-0000-000000000000	Information Technology	2026	714022205097	22IT098	B	4	22ITB
71402220-5098-0000-0000-000000000000	Information Technology	2026	714022205098	22IT099	B	4	22ITB
71402220-5099-0000-0000-000000000000	Information Technology	2026	714022205099	22IT097	B	4	22ITB
71402220-5100-0000-0000-000000000000	Information Technology	2026	714022205100	22IT101	B	4	22ITB
71402220-5101-0000-0000-000000000000	Information Technology	2026	714022205101	22IT100	B	4	22ITB
71402220-5089-0000-0000-000000000000	Information Technology	2026	714022205089	22IT089	B	4	22ITB
71402220-5090-0000-0000-000000000000	Information Technology	2026	714022205090	22IT090	B	4	22ITB
71402220-5091-0000-0000-000000000000	Information Technology	2026	714022205091	22IT091	B	4	22ITB
71402220-5092-0000-0000-000000000000	Information Technology	2026	714022205092	22IT092	B	4	22ITB
71402220-5093-0000-0000-000000000000	Information Technology	2026	714022205093	22IT093	B	4	22ITB
71402220-5094-0000-0000-000000000000	Information Technology	2026	714022205094	22IT094	B	4	22ITB
71402220-5095-0000-0000-000000000000	Information Technology	2026	714022205095	22IT095	B	4	22ITB
71402220-5096-0000-0000-000000000000	Information Technology	2026	714022205096	22IT096	B	4	22ITB
71402220-5102-0000-0000-000000000000	Information Technology	2026	714022205102	22IT102	B	4	22ITB
71402220-5103-0000-0000-000000000000	Information Technology	2026	714022205103	22IT103	B	4	22ITB
71402220-5105-0000-0000-000000000000	Information Technology	2026	714022205105	22IT105	B	4	22ITB
71402220-5106-0000-0000-000000000000	Information Technology	2026	714022205106	22IT106	B	4	22ITB
71402220-5107-0000-0000-000000000000	Information Technology	2026	714022205107	22IT107	B	4	22ITB
71402220-5108-0000-0000-000000000000	Information Technology	2026	714022205108	22IT108	B	4	22ITB
71402220-5109-0000-0000-000000000000	Information Technology	2026	714022205109	22IT109	B	4	22ITB
71402220-5110-0000-0000-000000000000	Information Technology	2026	714022205110	22IT110	B	4	22ITB
71402220-5111-0000-0000-000000000000	Information Technology	2026	714022205111	22IT111	B	4	22ITB
71402220-5112-0000-0000-000000000000	Information Technology	2026	714022205112	22IT112	B	4	22ITB
71402220-5113-0000-0000-000000000000	Information Technology	2026	714022205113	22IT113	B	4	22ITB
71402220-5114-0000-0000-000000000000	Information Technology	2026	714022205114	22IT114	B	4	22ITB
71402220-5115-0000-0000-000000000000	Information Technology	2026	714022205115	22IT115	B	4	22ITB
71402220-5117-0000-0000-000000000000	Information Technology	2026	714022205117	22IT117	B	4	22ITB
71402220-5118-0000-0000-000000000000	Information Technology	2026	714022205118	22IT118	B	4	22ITB
71402220-5119-0000-0000-000000000000	Information Technology	2026	714022205119	22IT119	B	4	22ITB
71402220-5120-0000-0000-000000000000	Information Technology	2026	714022205120	22IT120	B	4	22ITB
71402220-5121-0000-0000-000000000000	Information Technology	2026	714022205121	22IT121	B	4	22ITB
71402220-5301-0000-0000-000000000000	Information Technology	2026	714022205301	22IT301	B	4	22ITB
71402220-5125-0000-0000-000000000000	Information Technology	2026	714022205125	22IT125	B	4	22ITB
71402220-5124-0000-0000-000000000000	Information Technology	2026	714022205124	22IT124	B	4	22ITB
71402220-5123-0000-0000-000000000000	Information Technology	2026	714022205123	22IT123	B	4	22ITB
71402220-5122-0000-0000-000000000000	Information Technology	2026	714022205122	22IT122	B	4	22ITB
de94f1d9-6364-4191-8108-be58c5ff7ba1	Information Technology	2026	714022205104	22IT104	B	4	22ITB
65f4f15f-02b3-45f7-acfb-37cf161870eb	Information Technology	2026	714022205116	22IT116	B	4	22ITB
16fb0bd9-ca59-47df-9d3e-e89b2abc3744	Information Technology	2026	714022205010	22IT010	A	4	22ITA
\.


--
-- Data for Name: absentees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."absentees" ("id", "roll_number", "class_code", "date", "reason") FROM stdin;
\.


--
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."admins" ("admin_id", "admin_role", "additional_info") FROM stdin;
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."courses" ("course_id", "course_name", "course_code", "description", "is_lab", "is_additional") FROM stdin;
f5afd905-8b16-488b-b1a2-48440d6dbbd9	Probability, Statistics and Queueing Theory	21MA405	\N	f	f
537b8a76-50fe-4b45-9173-1b5d1539522a	Operating System	21CS202	\N	f	f
94246cc6-5523-4b13-9a5a-685c244d8ecb	Design and Analysis of Algorithm	21CS401	\N	f	f
e789b846-c230-4d98-90fb-30682e90be1c	Embedded System	21PIT01	\N	f	f
884103e9-4c5b-48e9-a90b-9da07ebc0dd4	Advanced Databases	21CS421	\N	f	f
22025ca0-3d70-4597-ad9c-8f4b32089346	Advance Java Programming	21CS423	\N	f	f
c0cef820-573c-479a-a71b-bb6877b05ae5	Advance Database Laboratory	21ADBL	\N	t	f
3a1f9423-f277-4373-8102-4365c36f9a21	Advance Java Programming Laboratory	21AJPL	\N	t	f
a4d5a3b1-93c7-442a-ad83-c609dfbf6480	Operating System Laboratory	21OSL	\N	t	f
4fedddbe-e3bd-4e43-b347-937ed9d00eae	Design and Analysis of Algorithm Laboratory	21DAAL	\N	t	f
51a82da0-a5fb-4d5a-9e6e-a13b82f624c6	Business Management	21AG403	\N	f	t
f56066a9-3334-4d89-8ac0-bcb83269d7cf	Career Enhancement Program-I-VERBAL	21CEPIV	\N	f	t
8dc6e058-df43-472b-80e6-5697796d7d56	FREE	FREE	INTERVAL, LUNCH	f	t
681a99bf-bf63-492c-a85b-5cb07a944712	Engineering Exploration - 4	21EEL	\N	t	f
f9ccd867-35c5-4842-9406-b51942bdb0f7	SUNDAY	SUN	\N	f	t
\.


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."faculty" ("faculty_id", "department_name", "designation", "handling_class", "department_code") FROM stdin;
b566d98a-186b-4e67-aaaf-c8b6d89fb612	Information Technology	Assistant Professor	\N	IT
a0fbb030-d436-48cb-89d2-341c2957975f	Information Technology	Assistant Professor	\N	IT
39a20171-b808-4d1e-8d19-5fa0f6ec62a4	Information Technology	Assistant Professor	\N	IT
2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	Information Technology	Assistant Professor	\N	IT
71575883-9175-498f-8da2-cf6b9bcf74a6	Information Technology	Assistant Professor	22ITA	IT
bd939c19-d0ad-4dcb-bd90-f25abd7fa753	Information Technology	Assistant Professor	22ITB	IT
6b9b02ae-9e3e-47a2-8d49-8528529905c5	Mathematics	Assistant Professor	\N	MATHS
d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	Electronics and Communication Engineering	Assistant Professor	\N	ECE
ae232278-39cc-43b4-86a0-1426c21ea957	English	Assistant Professor	\N	ENG
d302f9ac-078a-4c19-b488-f0d2c58e8792	Agriculture Engineering	Assistant Professor	\N	AGRI
9c762b71-72b5-4b35-aaae-89ed74d00e45	Information Technology	HOD	21ITA	IT
\.


--
-- Data for Name: course_class_faculty_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."course_class_faculty_mapping" ("course_code", "class_code", "faculty_id", "mapping_id", "semester") FROM stdin;
21MA405	22ITB	6b9b02ae-9e3e-47a2-8d49-8528529905c5	1	4
21CS202	22ITB	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	2	4
21CS401	22ITB	b566d98a-186b-4e67-aaaf-c8b6d89fb612	3	4
21PIT01	22ITB	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	4	4
21CS421	22ITB	a0fbb030-d436-48cb-89d2-341c2957975f	5	4
21CS423	22ITB	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	6	4
21ADBL	22ITB	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	7	4
21AJPL	22ITB	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	8	4
21OSL	22ITB	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	9	4
21DAAL	22ITB	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	10	4
21AG403	22ITB	d302f9ac-078a-4c19-b488-f0d2c58e8792	11	4
21CEPIV	22ITB	ae232278-39cc-43b4-86a0-1426c21ea957	12	4
21AG403	22ITA	d302f9ac-078a-4c19-b488-f0d2c58e8792	14	4
21EEL	22ITB	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	15	4
21EEL	22ITA	9c762b71-72b5-4b35-aaae-89ed74d00e45	16	4
SUN	22ITA	9c762b71-72b5-4b35-aaae-89ed74d00e45	17	4
SUN	22ITB	9c762b71-72b5-4b35-aaae-89ed74d00e45	18	4
\.


--
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."attendance" ("date", "status", "roll_number", "remarks", "substitute_faculty_id", "mapping_id", "attendance_id", "nth_period") FROM stdin;
2024-06-29	present	22IT074	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT074	999
2024-06-29	present	22IT075	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT075	999
2024-06-29	present	22IT076	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT076	999
2024-06-29	present	22IT077	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT077	999
2024-06-29	present	22IT078	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT078	999
2024-06-29	present	22IT079	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT079	999
2024-06-29	present	22IT080	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT080	999
2024-06-29	present	22IT081	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT081	999
2024-06-29	present	22IT082	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT082	999
2024-06-29	present	22IT083	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT083	999
2024-06-29	present	22IT084	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT084	999
2024-06-29	present	22IT085	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT085	999
2024-06-29	present	22IT086	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT086	999
2024-06-29	present	22IT087	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT087	999
2024-06-29	present	22IT088	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT088	999
2024-06-29	present	22IT089	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT089	999
2024-06-29	present	22IT090	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT090	999
2024-06-29	present	22IT091	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT091	999
2024-06-29	present	22IT092	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT092	999
2024-06-29	present	22IT093	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT093	999
2024-06-29	present	22IT094	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT094	999
2024-06-29	present	22IT095	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT095	999
2024-06-29	present	22IT096	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT096	999
2024-06-29	present	22IT097	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT097	999
2024-06-29	present	22IT099	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT099	999
2024-06-29	present	22IT098	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT098	999
2024-06-29	present	22IT101	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT101	999
2024-06-29	present	22IT100	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT100	999
2024-06-29	present	22IT102	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT102	999
2024-06-29	present	22IT103	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT103	999
2024-06-29	present	22IT106	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT106	999
2024-06-29	present	22IT105	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT105	999
2024-06-29	present	22IT108	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT108	999
2024-06-29	present	22IT107	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT107	999
2024-06-29	present	22IT109	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT109	999
2024-06-29	present	22IT110	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT110	999
2024-06-29	absent	22IT067	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT067	999
2024-06-29	present	22IT111	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT111	999
2024-06-29	present	22IT112	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT112	999
2024-06-29	present	22IT113	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT113	999
2024-06-29	present	22IT114	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT114	999
2024-06-29	present	22IT115	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT115	999
2024-06-29	present	22IT117	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT117	999
2024-06-29	present	22IT118	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT118	999
2024-06-29	present	22IT119	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT119	999
2024-06-29	present	22IT120	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT120	999
2024-06-29	present	22IT121	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT121	999
2024-06-29	present	22IT301	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT301	999
2024-06-29	absent	22IT068	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT068	999
2024-06-29	present	22IT125	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT125	999
2024-06-29	present	22IT124	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT124	999
2024-06-29	present	22IT123	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT123	999
2024-06-29	present	22IT122	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT122	999
2024-06-29	present	22IT104	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT104	999
2024-06-29	present	22IT066	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT066	999
2024-06-29	absent	22IT065	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT065	999
2024-06-29	absent	22IT064	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT064	999
2024-06-29	present	22IT116	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT116	999
2024-06-29	present	22IT069	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT069	999
2024-06-29	present	22IT070	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT070	999
2024-06-29	present	22IT071	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT071	999
2024-06-29	present	22IT072	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT072	999
2024-06-29	present	22IT073	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	15	2024-6-29/999/15/22IT073	999
2024-06-30	present	22IT058	\N	\N	17	2024-6-30/5/17/22IT058	5
2024-06-30	present	22IT010	\N	\N	17	2024-6-30/5/17/22IT010	5
2024-06-30	absent	22IT058	\N	\N	17	2024-6-30/4/17/22IT058	4
2024-06-30	present	22IT010	\N	\N	17	2024-6-30/4/17/22IT010	4
2024-06-30	present	22IT064	\N	\N	18	2024-6-30/5/18/22IT064	5
2024-06-30	present	22IT065	\N	\N	18	2024-6-30/5/18/22IT065	5
2024-06-30	present	22IT066	\N	\N	18	2024-6-30/5/18/22IT066	5
2024-06-30	present	22IT067	\N	\N	18	2024-6-30/5/18/22IT067	5
2024-06-30	present	22IT068	\N	\N	18	2024-6-30/5/18/22IT068	5
2024-06-30	present	22IT069	\N	\N	18	2024-6-30/5/18/22IT069	5
2024-06-30	present	22IT070	\N	\N	18	2024-6-30/5/18/22IT070	5
2024-06-30	present	22IT071	\N	\N	18	2024-6-30/5/18/22IT071	5
2024-06-30	present	22IT072	\N	\N	18	2024-6-30/5/18/22IT072	5
2024-06-30	present	22IT073	\N	\N	18	2024-6-30/5/18/22IT073	5
2024-06-30	present	22IT074	\N	\N	18	2024-6-30/5/18/22IT074	5
2024-06-30	present	22IT075	\N	\N	18	2024-6-30/5/18/22IT075	5
2024-06-30	present	22IT076	\N	\N	18	2024-6-30/5/18/22IT076	5
2024-06-30	present	22IT077	\N	\N	18	2024-6-30/5/18/22IT077	5
2024-06-30	present	22IT078	\N	\N	18	2024-6-30/5/18/22IT078	5
2024-06-30	present	22IT079	\N	\N	18	2024-6-30/5/18/22IT079	5
2024-06-30	present	22IT080	\N	\N	18	2024-6-30/5/18/22IT080	5
2024-06-30	present	22IT081	\N	\N	18	2024-6-30/5/18/22IT081	5
2024-06-30	present	22IT082	\N	\N	18	2024-6-30/5/18/22IT082	5
2024-06-30	present	22IT083	\N	\N	18	2024-6-30/5/18/22IT083	5
2024-06-30	present	22IT084	\N	\N	18	2024-6-30/5/18/22IT084	5
2024-06-30	present	22IT085	\N	\N	18	2024-6-30/5/18/22IT085	5
2024-06-30	present	22IT086	\N	\N	18	2024-6-30/5/18/22IT086	5
2024-06-30	present	22IT087	\N	\N	18	2024-6-30/5/18/22IT087	5
2024-06-30	present	22IT090	\N	\N	18	2024-6-30/5/18/22IT090	5
2024-06-30	present	22IT093	\N	\N	18	2024-6-30/5/18/22IT093	5
2024-06-30	present	22IT096	\N	\N	18	2024-6-30/5/18/22IT096	5
2024-06-30	present	22IT098	\N	\N	18	2024-6-30/5/18/22IT098	5
2024-06-30	present	22IT102	\N	\N	18	2024-6-30/5/18/22IT102	5
2024-06-30	present	22IT106	\N	\N	18	2024-6-30/5/18/22IT106	5
2024-06-30	present	22IT109	\N	\N	18	2024-6-30/5/18/22IT109	5
2024-06-30	present	22IT112	\N	\N	18	2024-6-30/5/18/22IT112	5
2024-06-30	present	22IT115	\N	\N	18	2024-6-30/5/18/22IT115	5
2024-06-30	present	22IT119	\N	\N	18	2024-6-30/5/18/22IT119	5
2024-06-30	present	22IT301	\N	\N	18	2024-6-30/5/18/22IT301	5
2024-06-30	present	22IT123	\N	\N	18	2024-6-30/5/18/22IT123	5
2024-06-30	present	22IT116	\N	\N	18	2024-6-30/5/18/22IT116	5
2024-06-30	present	22IT088	\N	\N	18	2024-6-30/5/18/22IT088	5
2024-06-30	present	22IT091	\N	\N	18	2024-6-30/5/18/22IT091	5
2024-06-30	present	22IT094	\N	\N	18	2024-6-30/5/18/22IT094	5
2024-06-30	present	22IT097	\N	\N	18	2024-6-30/5/18/22IT097	5
2024-06-30	present	22IT101	\N	\N	18	2024-6-30/5/18/22IT101	5
2024-06-30	present	22IT103	\N	\N	18	2024-6-30/5/18/22IT103	5
2024-06-30	present	22IT107	\N	\N	18	2024-6-30/5/18/22IT107	5
2024-06-30	present	22IT110	\N	\N	18	2024-6-30/5/18/22IT110	5
2024-06-30	present	22IT113	\N	\N	18	2024-6-30/5/18/22IT113	5
2024-06-30	present	22IT117	\N	\N	18	2024-6-30/5/18/22IT117	5
2024-06-30	present	22IT120	\N	\N	18	2024-6-30/5/18/22IT120	5
2024-06-30	present	22IT125	\N	\N	18	2024-6-30/5/18/22IT125	5
2024-06-30	present	22IT122	\N	\N	18	2024-6-30/5/18/22IT122	5
2024-06-30	present	22IT089	\N	\N	18	2024-6-30/5/18/22IT089	5
2024-06-30	present	22IT092	\N	\N	18	2024-6-30/5/18/22IT092	5
2024-06-30	present	22IT095	\N	\N	18	2024-6-30/5/18/22IT095	5
2024-06-30	present	22IT099	\N	\N	18	2024-6-30/5/18/22IT099	5
2024-06-30	present	22IT100	\N	\N	18	2024-6-30/5/18/22IT100	5
2024-06-30	present	22IT105	\N	\N	18	2024-6-30/5/18/22IT105	5
2024-06-30	present	22IT108	\N	\N	18	2024-6-30/5/18/22IT108	5
2024-06-30	present	22IT111	\N	\N	18	2024-6-30/5/18/22IT111	5
2024-06-30	present	22IT114	\N	\N	18	2024-6-30/5/18/22IT114	5
2024-06-30	present	22IT118	\N	\N	18	2024-6-30/5/18/22IT118	5
2024-06-30	present	22IT121	\N	\N	18	2024-6-30/5/18/22IT121	5
2024-06-30	present	22IT124	\N	\N	18	2024-6-30/5/18/22IT124	5
2024-06-30	present	22IT104	\N	\N	18	2024-6-30/5/18/22IT104	5
2024-07-01	present	22IT064	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT064	1
2024-07-01	present	22IT065	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT065	1
2024-07-01	present	22IT066	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT066	1
2024-07-01	present	22IT067	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT067	1
2024-07-01	present	22IT068	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT068	1
2024-07-01	present	22IT069	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT069	1
2024-07-01	present	22IT070	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT070	1
2024-07-01	present	22IT071	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT071	1
2024-07-01	present	22IT072	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT072	1
2024-07-01	present	22IT073	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT073	1
2024-07-01	present	22IT074	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT074	1
2024-07-01	present	22IT075	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT075	1
2024-07-01	present	22IT076	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT076	1
2024-07-01	present	22IT077	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT077	1
2024-07-01	present	22IT078	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT078	1
2024-07-01	present	22IT079	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT079	1
2024-07-01	present	22IT080	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT080	1
2024-07-01	present	22IT081	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT081	1
2024-07-01	present	22IT082	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT082	1
2024-07-01	present	22IT083	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT083	1
2024-07-01	present	22IT084	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT084	1
2024-07-01	present	22IT085	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT085	1
2024-07-01	present	22IT086	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT086	1
2024-07-01	present	22IT087	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT087	1
2024-07-01	present	22IT088	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT088	1
2024-07-01	present	22IT089	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT089	1
2024-07-01	present	22IT090	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT090	1
2024-07-01	present	22IT091	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT091	1
2024-07-01	present	22IT092	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT092	1
2024-07-01	present	22IT093	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT093	1
2024-07-01	present	22IT094	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT094	1
2024-07-01	present	22IT095	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT095	1
2024-07-01	present	22IT096	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT096	1
2024-07-01	present	22IT097	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT097	1
2024-07-01	present	22IT099	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT099	1
2024-07-01	present	22IT098	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT098	1
2024-07-01	present	22IT101	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT101	1
2024-07-01	present	22IT100	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT100	1
2024-07-01	present	22IT102	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT102	1
2024-07-01	present	22IT103	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT103	1
2024-07-01	present	22IT105	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT105	1
2024-07-01	present	22IT106	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT106	1
2024-07-01	present	22IT107	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT107	1
2024-07-01	present	22IT108	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT108	1
2024-07-01	present	22IT109	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT109	1
2024-07-01	present	22IT110	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT110	1
2024-07-01	present	22IT111	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT111	1
2024-07-01	present	22IT112	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT112	1
2024-07-01	present	22IT113	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT113	1
2024-07-01	present	22IT114	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT114	1
2024-07-01	present	22IT115	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT115	1
2024-07-01	present	22IT117	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT117	1
2024-07-01	present	22IT118	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT118	1
2024-07-01	present	22IT119	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT119	1
2024-07-01	present	22IT120	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT120	1
2024-07-01	present	22IT121	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT121	1
2024-07-01	present	22IT301	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT301	1
2024-07-01	present	22IT125	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT125	1
2024-07-01	present	22IT124	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT124	1
2024-07-01	present	22IT123	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT123	1
2024-07-01	present	22IT122	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT122	1
2024-07-01	present	22IT104	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT104	1
2024-07-01	present	22IT116	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	6	2024-7-1/1/6/22IT116	1
2024-07-01	present	22IT064	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT064	3
2024-07-01	present	22IT065	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT065	3
2024-07-01	present	22IT066	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT066	3
2024-07-01	present	22IT067	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT067	3
2024-07-01	present	22IT068	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT068	3
2024-07-01	present	22IT069	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT069	3
2024-07-01	present	22IT070	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT070	3
2024-07-01	present	22IT071	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT071	3
2024-07-01	present	22IT072	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT072	3
2024-07-01	present	22IT073	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT073	3
2024-07-01	present	22IT074	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT074	3
2024-07-01	present	22IT075	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT075	3
2024-07-01	present	22IT076	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT076	3
2024-07-01	present	22IT077	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT077	3
2024-07-01	present	22IT078	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT078	3
2024-07-01	present	22IT079	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT079	3
2024-07-01	present	22IT080	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT080	3
2024-07-01	present	22IT081	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT081	3
2024-07-01	present	22IT082	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT082	3
2024-07-01	present	22IT083	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT083	3
2024-07-01	present	22IT084	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT084	3
2024-07-01	present	22IT085	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT085	3
2024-07-01	present	22IT086	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT086	3
2024-07-01	present	22IT087	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT087	3
2024-07-01	present	22IT088	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT088	3
2024-07-01	present	22IT089	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT089	3
2024-07-01	present	22IT090	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT090	3
2024-07-01	present	22IT091	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT091	3
2024-07-01	present	22IT092	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT092	3
2024-07-01	present	22IT093	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT093	3
2024-07-01	present	22IT094	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT094	3
2024-07-01	present	22IT095	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT095	3
2024-07-01	present	22IT096	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT096	3
2024-07-01	present	22IT097	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT097	3
2024-07-01	present	22IT099	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT099	3
2024-07-01	present	22IT098	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT098	3
2024-07-01	present	22IT101	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT101	3
2024-07-01	present	22IT100	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT100	3
2024-07-01	present	22IT102	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT102	3
2024-07-01	present	22IT103	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT103	3
2024-07-01	present	22IT105	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT105	3
2024-07-01	present	22IT106	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT106	3
2024-07-01	present	22IT107	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT107	3
2024-07-01	present	22IT108	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT108	3
2024-07-01	present	22IT109	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT109	3
2024-07-01	present	22IT110	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT110	3
2024-07-01	present	22IT111	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT111	3
2024-07-01	present	22IT112	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT112	3
2024-07-01	present	22IT113	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT113	3
2024-07-01	present	22IT114	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT114	3
2024-07-01	present	22IT115	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT115	3
2024-07-01	present	22IT117	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT117	3
2024-07-01	present	22IT118	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT118	3
2024-07-01	present	22IT119	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT119	3
2024-07-01	present	22IT120	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT120	3
2024-07-01	present	22IT121	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT121	3
2024-07-01	present	22IT301	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT301	3
2024-07-01	present	22IT125	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT125	3
2024-07-01	present	22IT124	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT124	3
2024-07-01	present	22IT123	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT123	3
2024-07-01	present	22IT122	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT122	3
2024-07-01	present	22IT104	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT104	3
2024-07-01	present	22IT116	\N	9c762b71-72b5-4b35-aaae-89ed74d00e45	10	2024-7-1/3/10/22IT116	3
\.


--
-- Data for Name: dependents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dependents" ("dependent_id", "student_id", "dependent_name", "email", "phone_number", "relation") FROM stdin;
\.


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."exams" ("exam_id", "course_id", "exam_type", "exam_date", "total_marks") FROM stdin;
978c2de3-4b7d-4adc-bdc8-d4136d9daa79	f5afd905-8b16-488b-b1a2-48440d6dbbd9	ciat1	\N	50
5751738c-c73a-433c-8661-7fe5626f6d31	537b8a76-50fe-4b45-9173-1b5d1539522a	ciat1	\N	50
8e28e046-03a2-4340-a140-2bc26e236542	94246cc6-5523-4b13-9a5a-685c244d8ecb	ciat1	\N	50
be92f4be-476c-416c-bf36-2c04f0a09107	e789b846-c230-4d98-90fb-30682e90be1c	ciat1	\N	50
084270d6-359e-4f04-8f07-3ea02b6295c1	884103e9-4c5b-48e9-a90b-9da07ebc0dd4	ciat1	\N	50
41fc512d-a3a9-4373-a6e9-b121930c719f	22025ca0-3d70-4597-ad9c-8f4b32089346	ciat1	\N	50
c5e7da9d-1212-46c4-812d-bdfea79d73de	f5afd905-8b16-488b-b1a2-48440d6dbbd9	ciat2	\N	50
162e7d48-047e-43db-a3f8-e01824560a44	537b8a76-50fe-4b45-9173-1b5d1539522a	ciat2	\N	50
403711ee-8fb2-46c7-bd14-025257c8ea0b	94246cc6-5523-4b13-9a5a-685c244d8ecb	ciat2	\N	50
76207536-9b24-46e2-95c7-2ebb957204d6	e789b846-c230-4d98-90fb-30682e90be1c	ciat2	\N	50
1db4284b-b1d5-466c-85c5-422f8d5860d8	884103e9-4c5b-48e9-a90b-9da07ebc0dd4	ciat2	\N	50
7b8a8cd1-a654-41ab-bff8-3ee016a21383	22025ca0-3d70-4597-ad9c-8f4b32089346	ciat2	\N	50
8e417e36-b2e8-498b-a3c0-6237345c96ad	f5afd905-8b16-488b-b1a2-48440d6dbbd9	ciat3	\N	50
54a7f8d6-f067-4337-bea6-58f74e9c95c7	537b8a76-50fe-4b45-9173-1b5d1539522a	ciat3	\N	50
3fecedc7-832f-4968-80a3-57c58f5163c8	94246cc6-5523-4b13-9a5a-685c244d8ecb	ciat3	\N	50
f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	e789b846-c230-4d98-90fb-30682e90be1c	ciat3	\N	50
2e40d453-9bc6-4fd3-9a85-453970544d7f	884103e9-4c5b-48e9-a90b-9da07ebc0dd4	ciat3	\N	50
9af9f3f0-9fb1-47a3-8eca-fa190176de8c	22025ca0-3d70-4597-ad9c-8f4b32089346	ciat3	\N	50
fc8f926c-472b-424e-af90-a80083f9f4a2	f5afd905-8b16-488b-b1a2-48440d6dbbd9	semester	\N	100
7785681a-99aa-460a-ba55-0618b3d1240a	537b8a76-50fe-4b45-9173-1b5d1539522a	semester	\N	100
1733db7e-e24b-41cb-ac8f-5ee8c34a4283	94246cc6-5523-4b13-9a5a-685c244d8ecb	semester	\N	100
86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	e789b846-c230-4d98-90fb-30682e90be1c	semester	\N	100
c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	884103e9-4c5b-48e9-a90b-9da07ebc0dd4	semester	\N	100
2f31f98e-49f7-4228-a40c-83d32ea2a65e	22025ca0-3d70-4597-ad9c-8f4b32089346	semester	\N	100
\.


--
-- Data for Name: marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."marks" ("mark_id", "student_id", "exam_id", "obtained_marks", "student_register_number") FROM stdin;
d2ebc663-86d5-4722-a268-3c610806762f	71402220-5064-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	10	714022205064
dd1457ad-ec09-4744-a0aa-403089ae89dc	71402220-5064-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	14	714022205064
62e21b18-8afd-4f16-878b-9e253a2ad681	71402220-5064-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	30	714022205064
dac5a014-a98e-4e0f-a882-a2f638b962cf	71402220-5064-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	25	714022205064
3cd55347-352d-4032-bfd4-553946eb2485	71402220-5064-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	31	714022205064
be16820c-1fc3-41dc-8f92-0a5140955496	71402220-5064-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	46	714022205064
6d0560ad-0eea-4819-8b57-9389c76fd2d6	71402220-5064-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	47	714022205064
28e7b50e-20b0-4b51-a2c1-8bccee83d55b	71402220-5064-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	44	714022205064
b5f2ac07-cf0e-4f45-a58d-b15cb97bc77c	71402220-5064-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	41	714022205064
11273ccd-7e6e-4ea4-a4a7-c77836a2fc2c	71402220-5064-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	12	714022205064
ac029931-7590-4916-b9a6-76d138f09a55	71402220-5064-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	45	714022205064
0491c880-36a8-45df-8288-6dab4805e81b	71402220-5064-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	44	714022205064
1ace545d-084d-4258-9a19-5b86e95a6878	71402220-5064-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	30	714022205064
85c1e91e-6c63-451b-bc9f-498eb3fa4096	71402220-5064-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	68	714022205064
4919a7a0-e821-431a-83c0-5d762b8fda35	71402220-5064-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	43	714022205064
856659b5-4875-42ba-b0f7-4fadf597999f	71402220-5064-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	42	714022205064
160362db-7c77-460a-8d5d-582e00329416	71402220-5064-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	97	714022205064
1035f87f-f285-4fdf-9290-0f7b4e873279	71402220-5064-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	18	714022205064
5d178cac-a019-4d98-83e5-9a5a60153ddd	71402220-5064-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	42	714022205064
5c955afc-f21d-41fa-81cd-cb3920abff84	71402220-5065-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	37	714022205065
fab7b927-d777-40ed-b75b-678a396c2740	71402220-5065-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	33	714022205065
c0f7f1d0-38c4-4d5e-8dd4-fdafe3a2cfd3	71402220-5065-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	26	714022205065
4f80ae6d-7a0c-4651-866b-4ab06734f255	71402220-5065-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	34	714022205065
b283bb77-8894-4967-b147-c377807704a5	71402220-5065-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	49	714022205065
90b1b5cc-2d4b-47e9-9077-c73f0755a05f	71402220-5065-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	27	714022205065
42edfdbf-911d-460c-bc60-e0d3fa881c36	71402220-5065-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	33	714022205065
0a41c956-83c8-4302-bbde-944ccfcd3372	71402220-5065-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	47	714022205065
c6bdd557-b293-4ff1-a012-5b0c83ed7365	71402220-5065-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	13	714022205065
111b0031-e66a-453c-953e-cabad3132d17	71402220-5065-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	12	714022205065
fdd84f6b-a46d-4b69-b3a6-3c98ea9c0490	71402220-5065-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	42	714022205065
a35c6a08-595c-4a00-aff7-a47eaec9adb3	71402220-5065-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	12	714022205065
7b24d9fa-2485-482f-be90-1c0135c21722	71402220-5065-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	22	714022205065
6833e1cc-0724-4583-b360-e161163565b3	71402220-5065-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	33	714022205065
60c943d4-3923-4af5-a2e5-4258a6b2af7f	71402220-5065-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	33	714022205065
880eff77-ee22-4083-ba30-b3f210e014cf	71402220-5065-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	19	714022205065
1d9361d1-6e8d-4b66-9c5c-b0ff1eaf812a	71402220-5065-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	15	714022205065
825679da-df39-4298-bbae-203485f38662	71402220-5065-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	39	714022205065
35c25ce6-15d8-4d0c-8288-a7bc20d6a475	71402220-5065-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	67	714022205065
81422190-7c6a-40fa-97d7-6bdda4b46bef	71402220-5065-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	53	714022205065
c954d5b0-da39-4e97-9a2c-3c0be6df365e	71402220-5065-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	45	714022205065
7145d5e1-73ef-4635-91c0-6bd455cbcc0f	71402220-5065-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	54	714022205065
baea7bf5-5a33-4c28-9cde-6358e53d6a24	71402220-5065-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	80	714022205065
cca0759c-e985-4d69-94c1-aeba3b17c579	71402220-5065-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	93	714022205065
c66c40ac-7647-4b79-98b7-e6262b60550e	71402220-5066-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	32	714022205066
e7e4061e-c844-400b-b58b-3b7622ed6dc3	71402220-5066-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	23	714022205066
128e9f69-39b9-4098-9bf3-a46d5559c6a6	71402220-5066-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	18	714022205066
358af571-486e-43f6-ab99-a059edd07c08	71402220-5066-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	45	714022205066
1a89d936-c268-4854-8bbb-6336ec3030e8	71402220-5066-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	13	714022205066
ac8c649d-2318-4b37-b84b-607516847606	71402220-5066-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	28	714022205066
54276435-83a2-442d-9569-b367e570a0e1	71402220-5066-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	26	714022205066
d5a66326-c125-444d-9b83-203849dd9d11	71402220-5066-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	42	714022205066
b5e74f96-c6fb-4a4f-82ae-ba95d948e881	71402220-5066-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	37	714022205066
025e1266-1605-43f6-89dd-e9e4eb9745a2	71402220-5066-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	11	714022205066
3113b40c-10ac-40bc-a5ec-81a72179e9e5	71402220-5066-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	22	714022205066
ae19ddd8-02ad-43fd-9d90-f76e3d4bd0e7	71402220-5066-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	46	714022205066
63bb2f68-cea5-4c32-bd5d-12cd9f58238b	71402220-5066-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	38	714022205066
5c03c180-7c61-4610-af52-f58e0e3e7ac4	71402220-5066-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	11	714022205066
d6da0f5c-23d6-4003-826a-c21af83a8bbf	71402220-5066-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	12	714022205066
d0125713-7ed1-4458-a809-eba5ecb772bb	71402220-5066-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	47	714022205066
fd707168-3a91-4722-bf4b-bd19f0e94f69	71402220-5066-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	43	714022205066
3d9dd628-b3cb-46a5-8163-46099fbe08cb	71402220-5066-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	49	714022205066
719eba04-de51-475a-8f4b-b721e961dede	71402220-5066-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	38	714022205066
275c7166-a53b-4636-b0be-c9a71ea48578	71402220-5066-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	40	714022205066
f37995b9-bd0c-4aed-a4d3-8e661e543ce1	71402220-5066-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	84	714022205066
667e1119-5bbe-4998-bd84-ae2398ecb897	71402220-5066-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	21	714022205066
20eb628a-00f2-4b33-91cc-92037e294cca	71402220-5066-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	65	714022205066
379e7fd6-ec0b-4271-a364-c49efbb6f291	71402220-5066-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	85	714022205066
fe048978-9ff7-4fca-8544-34be59ac9344	71402220-5067-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205067
93192fbc-63e3-4457-bdce-4ebe12218a6b	71402220-5067-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	16	714022205067
e854bac4-4211-4179-9ee0-9c4351e5ed3d	71402220-5067-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	12	714022205067
2b9562ae-2471-43e6-9398-eb8e14a22ee4	71402220-5067-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	37	714022205067
1d24f544-bacc-4d09-942b-56d5ca5daf2a	71402220-5067-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	11	714022205067
76857da3-e07c-403d-bd72-b9ea98b20aeb	71402220-5067-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	22	714022205067
40ee9b76-de32-4bf4-b083-015ff4a34b40	71402220-5067-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	45	714022205067
11d38bf7-b928-445d-adea-6dcd9679fb03	71402220-5067-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	13	714022205067
ff8188c9-7c54-40e6-8c3b-bbf5fbd1ec4b	71402220-5067-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	41	714022205067
9c636a8d-ee5f-4db1-90ee-b59f1094a484	71402220-5067-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	30	714022205067
5ce541d3-40df-47b1-8208-640f9eb55e0a	71402220-5067-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	12	714022205067
b543e9f0-2448-4077-b3ba-4fbb4d7cfa97	71402220-5067-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	16	714022205067
d60aafc5-1fda-4823-9dc4-339fb842a72e	71402220-5067-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	42	714022205067
ed8fccb1-219d-4436-9642-819e6d8bdbd5	71402220-5067-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	14	714022205067
f153b9af-47cd-4569-b888-abe981d25126	71402220-5067-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	40	714022205067
dd7b401d-dcb4-4b52-b309-cda223081b8d	71402220-5067-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	50	714022205067
f07a81d4-762e-4921-a705-8d74c4fabb8a	71402220-5067-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	34	714022205067
d7bd1e48-8f06-4729-96c8-968c5e6dc0e9	71402220-5067-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	17	714022205067
d8ffc5fe-1875-443a-bc37-3c17a8e8722c	71402220-5067-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	68	714022205067
b080157d-640d-4640-886e-1f955011b567	71402220-5067-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	19	714022205067
5dcdcfe4-5a2f-4301-b53d-c864b13eb17e	71402220-5067-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	27	714022205067
8e3eec26-8432-4a6d-bfc5-40ab555641ab	71402220-5067-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	23	714022205067
f7f65e8f-7afa-42cc-b8ef-45e4f1169a43	71402220-5067-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	79	714022205067
2001b204-f55a-4a49-8e59-c445818d7dee	71402220-5067-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	57	714022205067
4f551f92-3f7f-4f9e-b357-006803b30cfc	71402220-5068-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	34	714022205068
6520db84-c939-45f3-a1e4-b01639399c4d	71402220-5068-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	28	714022205068
25caab8f-0868-4571-8c49-c90218df74e7	71402220-5068-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	22	714022205068
f3354015-a054-47de-b7bd-bddc73031070	71402220-5068-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	10	714022205068
14672436-807d-4975-9f83-50284b34b26d	71402220-5068-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	22	714022205068
c137606d-4680-4885-bb48-27465495587c	71402220-5068-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	45	714022205068
731e2b18-83f4-4af3-96fb-efaa2cbab71f	71402220-5068-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	19	714022205068
eca06482-9ae9-44ca-9ede-07b1724fa351	71402220-5068-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	25	714022205068
f5be0a0a-8021-4628-bd3e-308752ca842c	71402220-5068-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	20	714022205068
f785656a-eea1-41e8-ba3b-8f1457367aa4	71402220-5068-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	27	714022205068
d5a95ea9-8f17-41ad-a702-bf494cc750cc	71402220-5068-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	14	714022205068
9ffcfff0-b472-4d5b-867c-f1eaadd8a967	71402220-5068-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	12	714022205068
d56da3bb-c01d-4d9d-95e3-639fdd7e64e7	71402220-5068-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	41	714022205068
acd51e42-e073-456b-b6ca-5533d240dfae	71402220-5068-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	714022205068
0d6b1cad-f5cf-4d68-8279-fb24e4be190a	71402220-5068-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	36	714022205068
4f0bee55-8ef9-42ec-9691-feb98f3c18f3	71402220-5068-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	16	714022205068
0bd6838a-16af-40f2-9dbc-77e0582116de	71402220-5068-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	14	714022205068
65c6f630-3cc1-4e39-9437-97b34060cd53	71402220-5068-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	22	714022205068
82a1f3b9-ee4a-487f-87b4-4faca76587b4	71402220-5068-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	64	714022205068
3dcb9c0d-8d66-4c0f-bbe1-8ab84049f4e8	71402220-5068-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	80	714022205068
5c9675af-15ad-4000-b3c0-4b3a80e6117d	71402220-5068-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	92	714022205068
88eab78e-8e0a-4040-b3f7-e035c8805c3b	71402220-5068-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	78	714022205068
c116056d-b83f-4936-a744-8d9dbcea899f	71402220-5068-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	63	714022205068
490daff4-f0d3-48b8-81c0-fc6c5827e9cb	71402220-5068-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	63	714022205068
fc2893b3-56a2-4d8c-9b9e-0e7695ef03a0	71402220-5069-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	49	714022205069
c9ea5212-62d5-4c55-948f-3052b96137f6	71402220-5069-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	25	714022205069
776832aa-5bb1-45a0-a124-83d5ae3f9a34	71402220-5069-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	14	714022205069
c059d081-69b1-4c34-82ac-29e33140236e	71402220-5069-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	26	714022205069
ab0037a3-aecf-4011-8355-ef07501071af	71402220-5069-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	26	714022205069
6a8f086e-5c70-454d-a1de-8a029897667e	71402220-5069-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	32	714022205069
cac50113-9b93-4bd7-838e-2c218a59d13d	71402220-5069-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	34	714022205069
3082aed7-18ea-4af7-95ae-fe46e224db4c	71402220-5069-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	41	714022205069
a1b8bb20-d4a2-44ba-b478-8f66b1f28a87	71402220-5069-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	29	714022205069
cdf14a2a-7836-4e65-8b9d-99be6dbd3e96	71402220-5069-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	47	714022205069
c6c813cf-42d1-4238-961c-493269959447	71402220-5069-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	47	714022205069
e5c41069-17e2-449b-976a-51bc47f1b399	71402220-5069-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	31	714022205069
384b7ef8-7887-4423-b067-7a17f5eb5166	71402220-5069-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	10	714022205069
47672e1e-027a-42d0-8b22-4a0d81112d41	71402220-5069-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	23	714022205069
44800554-0a67-42d9-9d2f-06bebc2c3c9f	71402220-5069-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	48	714022205069
0879cc6a-9404-4096-bbf0-695267108bcd	71402220-5069-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	14	714022205069
de166850-3968-4fae-8dd9-d2d0f435a855	71402220-5069-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	41	714022205069
e6f3d5db-15e5-44d8-aed4-8ae313401bea	71402220-5069-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	32	714022205069
b65dfe8b-d2c5-47d2-a9c0-57016f6df98e	71402220-5069-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	29	714022205069
c1c79e03-05fc-4da0-a416-f28d2ad621c0	71402220-5069-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	55	714022205069
03b15eca-0d43-4bbe-a88a-0014d86b4e1e	71402220-5069-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	34	714022205069
8e6969c0-e7c3-46be-9289-067ceab2f171	71402220-5069-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	61	714022205069
f1c72f8a-179c-4bd9-bb43-c217e968609d	71402220-5069-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	78	714022205069
bcd24c52-d257-4bd0-a390-c3f0726ab2fa	71402220-5069-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	55	714022205069
a10ed05f-9e7f-4f54-88de-3104cf98d890	71402220-5070-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	43	714022205070
e3178573-02c3-4e51-aad9-45024bb2ebcd	71402220-5070-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	25	714022205070
1a24245e-1b52-44f2-9713-17d3d754b2b4	71402220-5070-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	28	714022205070
e6534f9d-69c1-4a86-9d81-f8c0c3f660b7	71402220-5070-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	15	714022205070
afe96e0d-a2d2-4c01-a8df-cec3ae834b57	71402220-5070-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	34	714022205070
5ac62a2d-5dd5-408c-b340-818fe2250504	71402220-5070-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	30	714022205070
3081da47-0a45-4861-8acd-c413b50dfdfb	71402220-5070-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	36	714022205070
1ed3b9d6-e779-4daa-a2fc-53d9f0f69a5b	71402220-5070-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	27	714022205070
d0f3d1ef-4666-4698-ba20-97d90afae429	71402220-5070-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	32	714022205070
365aaa77-a2a3-4578-8b68-bbc77c45c813	71402220-5070-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	28	714022205070
6213953b-3b65-461f-b313-ef9f250a2f20	71402220-5070-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	40	714022205070
a2cf8935-9bc7-4442-82d3-4487e44b5dfd	71402220-5070-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	44	714022205070
821d4f1e-b5af-4fd5-986e-63aad10bf1f5	71402220-5070-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	42	714022205070
d84ad032-85ce-440f-8859-7a98f83f3c4e	71402220-5070-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	50	714022205070
02da52aa-42de-4c0a-9d6b-418120f8b5b6	71402220-5070-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	30	714022205070
55811198-2e2c-4bef-9936-b5307fcf922d	71402220-5070-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	32	714022205070
063fd752-f014-4291-b10b-6b8621c1fdc0	71402220-5070-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	40	714022205070
3d4b0e84-b0bd-4e97-9ccf-f226c967fb23	71402220-5070-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	19	714022205070
51a3ff5a-327f-4f6d-a4ee-6c0de44aebb3	71402220-5070-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	54	714022205070
4ffdfd23-0326-4a6a-a7c0-6086850aba34	71402220-5070-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	21	714022205070
0ab1f81f-b6b0-4c18-b3b4-16da66509236	71402220-5070-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	70	714022205070
b88d2be8-a32e-4c11-8719-0cefdcbb016b	71402220-5070-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	70	714022205070
43396e4b-97d7-4027-9368-fe7a724bab2f	71402220-5070-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	84	714022205070
515ee35d-e292-4629-abbb-c20a2a3a389d	71402220-5070-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	40	714022205070
1fd4ec7a-ee41-48cb-a0c9-404693feca3c	71402220-5071-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	40	714022205071
8ac96cfe-4380-4ac3-998c-3d0b0cbb1993	71402220-5071-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	31	714022205071
dfea6087-6b72-40c2-9106-9a1b8ada4cc6	71402220-5071-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	36	714022205071
e2c66eb5-9185-41b9-989d-a6ed4d92c05f	71402220-5071-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	49	714022205071
20a2ad69-935b-4ce3-8a39-d1d5bd78bff9	71402220-5071-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	32	714022205071
de37a7f0-2bd1-4e1e-b57e-77a1aa87ccd5	71402220-5071-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	23	714022205071
0ab211dc-b318-4410-8639-e569b20c0006	71402220-5071-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	30	714022205071
e7b247d4-66fd-425b-934e-5f38e22032e1	71402220-5071-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	13	714022205071
ab289b54-e7b8-41c3-942c-5e878e6584c3	71402220-5071-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	46	714022205071
92c425a3-5927-44da-bfe2-62c55c12772b	71402220-5071-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	50	714022205071
aa0022ff-b93a-41c9-aa34-93b5fd8f4bab	71402220-5071-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	11	714022205071
6a4d2acd-9ea9-4575-82cd-d621fa0454b9	71402220-5071-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	17	714022205071
a5437e1e-3af5-4353-bc98-0232a921de15	71402220-5071-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	11	714022205071
54668955-07a5-40bd-b119-27028c253b1c	71402220-5071-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	47	714022205071
77efc702-13aa-4860-b5bd-738acf1816c7	71402220-5071-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	19	714022205071
58158998-f93d-440d-b688-d7fb2ae32c7a	71402220-5071-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	38	714022205071
feb7ec32-7a89-4d64-9949-499e571d7a84	71402220-5071-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	46	714022205071
22b91529-85c7-428d-9ac6-5a2f013a5c50	71402220-5071-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	23	714022205071
25a26d5c-081f-49a8-b8dc-5dc270fb699c	71402220-5071-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	19	714022205071
14db88e5-55a4-482e-a5a9-cc8cc65a41b5	71402220-5071-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	87	714022205071
3a355314-de0c-4ea3-9d58-02cb8db6db57	71402220-5071-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	49	714022205071
a66d71a5-e76a-44c7-b03b-d59a3dd44c0e	71402220-5071-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	38	714022205071
9e2aef73-ea46-4f36-996a-7527da73c506	71402220-5071-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	97	714022205071
92018a2a-f218-4e09-b5dc-317483f41c56	71402220-5071-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	85	714022205071
8d9f217c-5973-42c0-8f64-be035829cc63	71402220-5072-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	35	714022205072
0ddb4f1c-6123-4f2c-a292-664c605e1acb	71402220-5072-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	14	714022205072
a17f637c-c15f-4ef7-a93e-5b41e3603c7c	71402220-5072-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	37	714022205072
1f458023-04da-48e6-b937-b8a4c9b92008	71402220-5072-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	39	714022205072
5ee30842-9be3-4100-a4fe-3dcfc20eef18	71402220-5072-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	43	714022205072
b0e179c7-c18c-4da8-af95-4a6e6a5e2928	71402220-5072-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	31	714022205072
f6cc7e8f-b344-46cf-b3c1-1be79ddde429	71402220-5072-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	12	714022205072
3d1115fb-8999-4a0d-91fd-b42d484f7ac1	71402220-5072-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	24	714022205072
c9d0828a-c7b2-4a74-bc94-59110d8ff903	71402220-5072-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	22	714022205072
8948257b-2a62-4c27-b0f5-c6563f7d938b	71402220-5072-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	45	714022205072
cca509e7-1a5d-4409-b123-451994309c61	71402220-5072-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	28	714022205072
d81ea5ee-3a74-46c0-92ef-43b1e5bcca45	71402220-5072-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	32	714022205072
7b72d2a1-dde9-414a-8057-c803b5457f75	71402220-5072-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	38	714022205072
afb55c1a-04e3-40c8-92f6-025f91d0e7b0	71402220-5072-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	49	714022205072
3608a6df-e98d-4818-9b10-1ecd922f1d27	71402220-5072-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	10	714022205072
b7ab2ced-1df8-4c40-9b05-581a70e76c20	71402220-5072-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	16	714022205072
07657601-7d87-4c81-b9f0-226781eab836	71402220-5072-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	41	714022205072
9bd14d82-8509-40f9-9a98-c6296811aa3e	71402220-5072-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	49	714022205072
5b988897-0bf0-4058-b9b3-75c2b26a866c	71402220-5072-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	98	714022205072
48ece86f-4c10-47cc-8f7a-22ca6ce28ae0	71402220-5072-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	24	714022205072
6985b5b4-f24b-4cf5-b0ea-76525e5cf234	71402220-5072-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	61	714022205072
f7629b68-291e-4182-98e4-f99cc4eebed5	71402220-5072-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	42	714022205072
786e2eeb-8b2c-4d42-90ee-8aae996c997b	71402220-5072-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	34	714022205072
6bba7ca6-7050-4de7-92fc-8660202a8ac3	71402220-5072-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	96	714022205072
882c77f7-66bc-4142-9ed0-ca50e6e360fc	71402220-5073-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	42	714022205073
fb2f9a27-c56f-4584-9c8a-9a5fce3b4372	71402220-5073-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	29	714022205073
ee0667d8-e699-4da3-947b-ea6fcf159abe	71402220-5073-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	40	714022205073
c91912da-38b4-4763-abff-821a53fb7242	71402220-5073-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	34	714022205073
e0a6dc6b-444d-4c6b-bb6f-cbf106778678	71402220-5073-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	45	714022205073
1bafcd4f-8637-468e-b0c7-6255882061ad	71402220-5073-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	50	714022205073
d1abc394-0583-4f21-bf18-a828106211ea	71402220-5073-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	39	714022205073
8bbd5a18-8122-4ec6-9154-82ed03e28076	71402220-5073-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	37	714022205073
0bae7526-2b90-4e2b-9c96-2cf5e4e1c6ba	71402220-5073-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	17	714022205073
474954fa-f0e1-4ac2-a625-af5a732b7222	71402220-5073-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	41	714022205073
df35f04a-c2b7-48a6-bb4c-28e2c4ea3f31	71402220-5073-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	46	714022205073
1acf8273-46f0-4a5e-a3cb-fd1f879b1952	71402220-5073-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	26	714022205073
3499eb71-162c-43ee-8b30-f5b9dab9fa6c	71402220-5073-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	45	714022205073
44826975-e0aa-41d4-956d-ddb5c4697755	71402220-5073-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	14	714022205073
4e8f86bf-3aba-414f-81c1-55225d08a2e0	71402220-5073-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	45	714022205073
63956d6e-0620-41a7-a1b4-2d1cb87300b4	71402220-5073-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	26	714022205073
e9a6d81b-1ca6-436b-bf9d-4f849c5804ba	71402220-5073-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	47	714022205073
55dae3ec-11d1-4ee6-99cb-cb47b6e1f0b3	71402220-5073-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	10	714022205073
d901b0b0-6cb0-4580-b72e-f61c7d1693c4	71402220-5073-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	45	714022205073
dd148293-b9f5-4f26-9f29-27170664826e	71402220-5073-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	37	714022205073
9b23e865-16bb-4c46-b9c4-39aa5e523764	71402220-5073-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	17	714022205073
de4d3160-52ae-41d6-9c66-7a8b65869603	71402220-5073-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	24	714022205073
2d00dcd7-12e5-4b46-8630-e7b60193b610	71402220-5073-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	28	714022205073
6da1da72-10ad-485d-bceb-46d567b443d7	71402220-5073-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	96	714022205073
0c50b5b9-ccfe-4b2c-9cde-4493ecd4a7a5	71402220-5074-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	31	714022205074
5b484e69-68d4-42ff-b0cb-c8c4a0106200	71402220-5074-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	20	714022205074
b9d52003-3113-4692-9c95-3b87cf2467c5	71402220-5074-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	47	714022205074
a8c9ae0f-f3cf-4ab3-9f84-dd6f1a7c6f0e	71402220-5074-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	12	714022205074
e18d2012-0792-4f6e-a4c4-693eb41a5ec8	71402220-5074-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	11	714022205074
5fb57501-e926-4d4f-8d60-6b91adcde530	71402220-5074-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	10	714022205074
45a98e98-4717-4dcb-b70b-abec70a1dd0e	71402220-5074-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	16	714022205074
ddee8b2d-e9a5-4e47-abdc-241a7c0c6a15	71402220-5074-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	16	714022205074
5cb63fe4-f57a-4383-b047-4a3a5c881cb2	71402220-5074-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	35	714022205074
8668f1ff-f0e6-43db-8153-2ca07b7a195b	71402220-5074-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	14	714022205074
747183fb-f32b-412f-9b00-ce95974cd6ff	71402220-5074-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	32	714022205074
6926f59b-2210-4c46-908a-97fa5426f6e9	71402220-5074-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	45	714022205074
e2a0154c-474c-4b5a-b351-f0e2f738bd53	71402220-5074-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	46	714022205074
1efe3875-947e-4da6-9d20-e618daebc1ee	71402220-5074-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	17	714022205074
6b8e4482-c09a-4c62-985b-24ea7212fc85	71402220-5074-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	39	714022205074
a912ceca-6bda-407f-bb30-c9b5d42a589f	71402220-5074-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	46	714022205074
fb8fc72f-abf6-440c-99ba-ebfcfe2b7e58	71402220-5074-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	22	714022205074
d2baef79-a465-4ab5-98ac-e9d4fb3b6009	71402220-5074-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	50	714022205074
55850dea-4729-4d8e-bfc0-bcec8a853b7f	71402220-5074-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	76	714022205074
e4ff3868-0584-4a32-9d2f-5a59d098c885	71402220-5074-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	40	714022205074
567b2790-3777-4081-a423-35f8f781bec7	71402220-5074-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	22	714022205074
1d65c5ca-4b85-4936-9f32-d6bb081ec25a	71402220-5074-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	15	714022205074
2e1f9c04-1d9f-495b-a453-893e1cada3d8	71402220-5074-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	62	714022205074
b841c080-e41c-41cf-b7d7-83e73adbc1de	71402220-5074-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	53	714022205074
bfb56da9-12cf-460a-b36b-65e1e5dbd0fe	71402220-5075-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	16	714022205075
0dfb5135-1a3b-47f1-a5f5-59acc5fde4a1	71402220-5075-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	48	714022205075
ff3114ea-dae3-4f21-a4bc-085b750c5b9c	71402220-5075-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	17	714022205075
007bdc74-f3a7-4ee2-a843-1697d3ae41a4	71402220-5075-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	26	714022205075
6eac9820-50fd-45bd-b356-a9bf92776a7d	71402220-5075-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	16	714022205075
4e12b55a-a515-462d-a991-1af148750e75	71402220-5075-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	21	714022205075
0fb771f3-6e55-450d-9060-875c2efa44da	71402220-5075-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	23	714022205075
cbffe5c7-7701-4a15-8944-8bf06e2701de	71402220-5075-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	35	714022205075
697098f1-a528-4d95-ae4c-7922f4e00d9c	71402220-5075-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	26	714022205075
83fe6fc0-c9f3-4a1a-b6ef-1473900b6584	71402220-5075-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	35	714022205075
f405aaac-0e24-42fb-a8a0-3c6947745626	71402220-5075-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	36	714022205075
3af5dbb5-2f12-469f-8e78-8a2cc75a2f9f	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	10	\N
3180757f-2ee8-43b6-8db9-5ac0c3c8a0fe	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	5751738c-c73a-433c-8661-7fe5626f6d31	20	\N
5a51ea8a-2bd8-4723-9299-cfb0d0cc18f5	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	8e28e046-03a2-4340-a140-2bc26e236542	13	\N
c1e504d1-a049-4f71-a3a7-6b219db4a623	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	be92f4be-476c-416c-bf36-2c04f0a09107	29	\N
a7c3dcd6-eb04-4c06-b2cf-f62e071c3164	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	084270d6-359e-4f04-8f07-3ea02b6295c1	23	\N
4e708184-188a-4672-9f7b-0470dd9bb707	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	41fc512d-a3a9-4373-a6e9-b121930c719f	37	\N
b1348d7f-8193-41b6-8af9-2ed489bcd05c	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	c5e7da9d-1212-46c4-812d-bdfea79d73de	45	\N
e6710967-6382-4e87-b9e4-7a591da684b6	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	162e7d48-047e-43db-a3f8-e01824560a44	23	\N
e4651ee1-d270-4824-95a2-52b095b5744e	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	403711ee-8fb2-46c7-bd14-025257c8ea0b	41	\N
f5284949-c415-4503-a23a-3a6ee1cdf742	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	76207536-9b24-46e2-95c7-2ebb957204d6	27	\N
ed8c5cd0-6302-4013-b2bd-8365c433ae91	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	1db4284b-b1d5-466c-85c5-422f8d5860d8	20	\N
ecd78f91-4b92-4748-ac14-589faada1122	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	7b8a8cd1-a654-41ab-bff8-3ee016a21383	34	\N
002c68d2-ed73-419e-a5b8-62dd60bc35b9	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	8e417e36-b2e8-498b-a3c0-6237345c96ad	30	\N
13028112-fe95-4f84-8055-09edee8607af	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	54a7f8d6-f067-4337-bea6-58f74e9c95c7	14	\N
e0b0a881-facc-4262-ba1c-cd1a2bea1322	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	3fecedc7-832f-4968-80a3-57c58f5163c8	19	\N
19e28576-81e2-4df4-8ec7-bfce331645ab	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	17	\N
2d2949ee-8ca2-401f-b8b1-4352f4b1251a	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	2e40d453-9bc6-4fd3-9a85-453970544d7f	46	\N
e405b4ef-906a-4db4-aa7b-84c218fdd27d	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	39	\N
df427603-edd9-4648-b0db-7450772b55a2	ae232278-39cc-43b4-86a0-1426c21ea957	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	24	\N
e201179c-b785-438e-8cd1-a5ae84ec3991	ae232278-39cc-43b4-86a0-1426c21ea957	5751738c-c73a-433c-8661-7fe5626f6d31	31	\N
e695e223-c767-4e16-948f-9fa29909e038	ae232278-39cc-43b4-86a0-1426c21ea957	8e28e046-03a2-4340-a140-2bc26e236542	27	\N
3565a588-d355-4e0b-afdb-44c3c01aa066	ae232278-39cc-43b4-86a0-1426c21ea957	be92f4be-476c-416c-bf36-2c04f0a09107	22	\N
66173ba1-eeef-4c4a-b575-f176f7899898	ae232278-39cc-43b4-86a0-1426c21ea957	084270d6-359e-4f04-8f07-3ea02b6295c1	49	\N
d2d17ee6-208b-4f46-93d5-e22180933464	ae232278-39cc-43b4-86a0-1426c21ea957	41fc512d-a3a9-4373-a6e9-b121930c719f	10	\N
879137a1-4583-499e-8951-e3b4a35c5c3f	ae232278-39cc-43b4-86a0-1426c21ea957	c5e7da9d-1212-46c4-812d-bdfea79d73de	24	\N
00866c89-2cca-4796-b860-dbf010b4293c	ae232278-39cc-43b4-86a0-1426c21ea957	162e7d48-047e-43db-a3f8-e01824560a44	45	\N
1d17b60b-34cc-4214-9de9-c40e08f655dd	ae232278-39cc-43b4-86a0-1426c21ea957	403711ee-8fb2-46c7-bd14-025257c8ea0b	25	\N
709f8544-5d42-4ffd-97cb-f00a4897ee54	ae232278-39cc-43b4-86a0-1426c21ea957	76207536-9b24-46e2-95c7-2ebb957204d6	39	\N
3689a77a-eff9-440a-9277-d1711ce2970c	ae232278-39cc-43b4-86a0-1426c21ea957	1db4284b-b1d5-466c-85c5-422f8d5860d8	48	\N
7ca6a19d-6594-4a16-9e2f-5e7dcec17954	ae232278-39cc-43b4-86a0-1426c21ea957	7b8a8cd1-a654-41ab-bff8-3ee016a21383	13	\N
2b606086-10e3-4f63-902c-7265ae32bcca	ae232278-39cc-43b4-86a0-1426c21ea957	8e417e36-b2e8-498b-a3c0-6237345c96ad	13	\N
d48994d1-a37d-4323-b0ea-0c72acf846a8	ae232278-39cc-43b4-86a0-1426c21ea957	54a7f8d6-f067-4337-bea6-58f74e9c95c7	37	\N
84084833-cee3-44ac-a4e8-ec3eff340507	ae232278-39cc-43b4-86a0-1426c21ea957	3fecedc7-832f-4968-80a3-57c58f5163c8	31	\N
eccb52ce-aae2-44f6-a2a5-aa5c40134ea1	ae232278-39cc-43b4-86a0-1426c21ea957	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	12	\N
65defdf9-7d93-471a-a22c-a3b4bd0a1652	ae232278-39cc-43b4-86a0-1426c21ea957	2e40d453-9bc6-4fd3-9a85-453970544d7f	39	\N
505fdd7a-2340-4585-b785-a2d7eca779c0	ae232278-39cc-43b4-86a0-1426c21ea957	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	12	\N
247ccb31-c684-409a-a127-06ec7793b672	d302f9ac-078a-4c19-b488-f0d2c58e8792	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	49	\N
4bd9c233-6e7b-4ceb-b0f7-0fc15b98d782	d302f9ac-078a-4c19-b488-f0d2c58e8792	5751738c-c73a-433c-8661-7fe5626f6d31	20	\N
6c2d6f29-4a98-4ae1-9560-323c2b2e7ea0	d302f9ac-078a-4c19-b488-f0d2c58e8792	8e28e046-03a2-4340-a140-2bc26e236542	44	\N
1ebf6df2-ee47-4185-aa9d-a13bcfa8407b	d302f9ac-078a-4c19-b488-f0d2c58e8792	be92f4be-476c-416c-bf36-2c04f0a09107	17	\N
a8b2a117-480a-4b83-a882-8b0bb6c619ed	d302f9ac-078a-4c19-b488-f0d2c58e8792	084270d6-359e-4f04-8f07-3ea02b6295c1	30	\N
baf26128-9e54-494a-9a70-a16a2d919988	d302f9ac-078a-4c19-b488-f0d2c58e8792	41fc512d-a3a9-4373-a6e9-b121930c719f	40	\N
611a9934-beff-4b5a-bf6c-4072eff699f7	d302f9ac-078a-4c19-b488-f0d2c58e8792	c5e7da9d-1212-46c4-812d-bdfea79d73de	23	\N
cc5c272c-6be3-4597-ab30-68ea24c97794	d302f9ac-078a-4c19-b488-f0d2c58e8792	162e7d48-047e-43db-a3f8-e01824560a44	20	\N
11a9233f-943a-44ab-8d0f-5385675e8e7f	d302f9ac-078a-4c19-b488-f0d2c58e8792	403711ee-8fb2-46c7-bd14-025257c8ea0b	42	\N
34a250b8-5396-4221-8aa7-fc8c2b50298c	d302f9ac-078a-4c19-b488-f0d2c58e8792	76207536-9b24-46e2-95c7-2ebb957204d6	41	\N
d2cc7803-f7a8-4ece-b28f-e6c037f2482f	d302f9ac-078a-4c19-b488-f0d2c58e8792	1db4284b-b1d5-466c-85c5-422f8d5860d8	46	\N
4789fd45-cf82-477b-a7bb-6045f9d5b407	d302f9ac-078a-4c19-b488-f0d2c58e8792	7b8a8cd1-a654-41ab-bff8-3ee016a21383	28	\N
02bab3f1-190a-4479-926b-e4a661ab43cc	d302f9ac-078a-4c19-b488-f0d2c58e8792	8e417e36-b2e8-498b-a3c0-6237345c96ad	24	\N
4c35ac58-e03f-445d-8814-5ead20ca6850	d302f9ac-078a-4c19-b488-f0d2c58e8792	54a7f8d6-f067-4337-bea6-58f74e9c95c7	23	\N
0da946ed-2378-47f5-bd98-df63fed2e274	d302f9ac-078a-4c19-b488-f0d2c58e8792	3fecedc7-832f-4968-80a3-57c58f5163c8	29	\N
cbdeab9c-3737-4e7e-879a-9ffe3ccf1689	d302f9ac-078a-4c19-b488-f0d2c58e8792	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	12	\N
9a8e5dd6-4d28-4bdd-9f34-9d2d02d06e38	d302f9ac-078a-4c19-b488-f0d2c58e8792	2e40d453-9bc6-4fd3-9a85-453970544d7f	39	\N
0912263c-00a0-4b2d-95de-7b3192421f86	d302f9ac-078a-4c19-b488-f0d2c58e8792	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	10	\N
e7d43c63-64a1-496d-a7c7-71a733c1f93f	6b9b02ae-9e3e-47a2-8d49-8528529905c5	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	10	\N
b9db9fe3-027b-4fc9-93ba-0463673bf42f	6b9b02ae-9e3e-47a2-8d49-8528529905c5	5751738c-c73a-433c-8661-7fe5626f6d31	16	\N
7887b0c2-796a-4525-8814-590b69bf6c1c	6b9b02ae-9e3e-47a2-8d49-8528529905c5	8e28e046-03a2-4340-a140-2bc26e236542	44	\N
eee9b3fe-e0c5-4ae7-a986-b216e8892575	6b9b02ae-9e3e-47a2-8d49-8528529905c5	be92f4be-476c-416c-bf36-2c04f0a09107	49	\N
92d58fd9-6a9d-419a-986a-c35deeea1752	6b9b02ae-9e3e-47a2-8d49-8528529905c5	084270d6-359e-4f04-8f07-3ea02b6295c1	24	\N
ef49110d-2a18-456d-83ac-8f28bd251afb	6b9b02ae-9e3e-47a2-8d49-8528529905c5	41fc512d-a3a9-4373-a6e9-b121930c719f	43	\N
0f4e994e-15af-4dd1-9eb8-e3f0f43c4ecc	6b9b02ae-9e3e-47a2-8d49-8528529905c5	c5e7da9d-1212-46c4-812d-bdfea79d73de	21	\N
6585d711-f678-4355-8c18-4f5265a3ba54	6b9b02ae-9e3e-47a2-8d49-8528529905c5	162e7d48-047e-43db-a3f8-e01824560a44	31	\N
65b7a12c-b59e-4b98-817f-84345d9be4d3	6b9b02ae-9e3e-47a2-8d49-8528529905c5	403711ee-8fb2-46c7-bd14-025257c8ea0b	49	\N
f429e315-35ea-439e-9d20-cce2f6fbd825	6b9b02ae-9e3e-47a2-8d49-8528529905c5	76207536-9b24-46e2-95c7-2ebb957204d6	47	\N
e116341c-44f1-45f0-9aed-b500134e14ff	6b9b02ae-9e3e-47a2-8d49-8528529905c5	1db4284b-b1d5-466c-85c5-422f8d5860d8	25	\N
7e9ddd28-17ee-4ef5-a8eb-1fdf1fffac1d	6b9b02ae-9e3e-47a2-8d49-8528529905c5	7b8a8cd1-a654-41ab-bff8-3ee016a21383	11	\N
afd80886-158d-46d0-a317-b23507a3b61c	6b9b02ae-9e3e-47a2-8d49-8528529905c5	8e417e36-b2e8-498b-a3c0-6237345c96ad	19	\N
4ff03ff6-0370-43fa-a55c-343a8b2b6bda	6b9b02ae-9e3e-47a2-8d49-8528529905c5	54a7f8d6-f067-4337-bea6-58f74e9c95c7	16	\N
86bdb3a2-62c7-4c56-862b-634c8219741b	6b9b02ae-9e3e-47a2-8d49-8528529905c5	3fecedc7-832f-4968-80a3-57c58f5163c8	50	\N
237137a3-9105-4a97-b1f1-d605d92f90bc	6b9b02ae-9e3e-47a2-8d49-8528529905c5	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	12	\N
1779e446-fe57-4d4e-8e0b-54c3d2b5b46c	6b9b02ae-9e3e-47a2-8d49-8528529905c5	2e40d453-9bc6-4fd3-9a85-453970544d7f	35	\N
dc9151ad-cdd1-42b3-be4d-780ff341160d	6b9b02ae-9e3e-47a2-8d49-8528529905c5	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	46	\N
13c97f3d-cefa-408e-a59b-d49517f8772d	a0fbb030-d436-48cb-89d2-341c2957975f	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	34	\N
f61bf289-edf4-4818-ae26-506deae4b692	a0fbb030-d436-48cb-89d2-341c2957975f	5751738c-c73a-433c-8661-7fe5626f6d31	17	\N
19397754-e6d6-4e23-a1ba-1f1b39f81c7c	a0fbb030-d436-48cb-89d2-341c2957975f	8e28e046-03a2-4340-a140-2bc26e236542	33	\N
b980d37c-bd52-4a0e-9340-b0b80af5eb04	a0fbb030-d436-48cb-89d2-341c2957975f	be92f4be-476c-416c-bf36-2c04f0a09107	36	\N
f8adfb4a-af26-4145-a601-ec4bf306d9c7	a0fbb030-d436-48cb-89d2-341c2957975f	084270d6-359e-4f04-8f07-3ea02b6295c1	20	\N
f400420c-e5f4-4e8b-9007-085000dc2f2b	a0fbb030-d436-48cb-89d2-341c2957975f	41fc512d-a3a9-4373-a6e9-b121930c719f	14	\N
381238c7-2515-4ea2-9e6a-9070dc97f8e8	a0fbb030-d436-48cb-89d2-341c2957975f	c5e7da9d-1212-46c4-812d-bdfea79d73de	41	\N
eb209917-4832-41ef-b2d0-5e6c80dc7700	a0fbb030-d436-48cb-89d2-341c2957975f	162e7d48-047e-43db-a3f8-e01824560a44	20	\N
fd36c096-43c2-40bd-918d-ec161c2a6afd	a0fbb030-d436-48cb-89d2-341c2957975f	403711ee-8fb2-46c7-bd14-025257c8ea0b	25	\N
22fe8b78-bf3c-404c-b9bd-f43aa1624484	a0fbb030-d436-48cb-89d2-341c2957975f	76207536-9b24-46e2-95c7-2ebb957204d6	12	\N
29d75313-0212-48cc-b5cc-92a906f5b6cb	a0fbb030-d436-48cb-89d2-341c2957975f	1db4284b-b1d5-466c-85c5-422f8d5860d8	26	\N
1144f4a7-fdc7-4582-af6c-c42c115caf9e	a0fbb030-d436-48cb-89d2-341c2957975f	7b8a8cd1-a654-41ab-bff8-3ee016a21383	17	\N
87a112d6-5c03-4635-a2d8-9d36b6515b9e	a0fbb030-d436-48cb-89d2-341c2957975f	8e417e36-b2e8-498b-a3c0-6237345c96ad	22	\N
e520a1c2-1b43-4a7a-a884-f90b69427ba9	a0fbb030-d436-48cb-89d2-341c2957975f	54a7f8d6-f067-4337-bea6-58f74e9c95c7	44	\N
a748c019-048e-407d-9b9d-c0758a3c695e	a0fbb030-d436-48cb-89d2-341c2957975f	3fecedc7-832f-4968-80a3-57c58f5163c8	18	\N
b452e226-bdef-48b9-a708-a1808a970204	a0fbb030-d436-48cb-89d2-341c2957975f	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	33	\N
d02687d2-b326-43f0-8a9d-f0c260b8e202	a0fbb030-d436-48cb-89d2-341c2957975f	2e40d453-9bc6-4fd3-9a85-453970544d7f	43	\N
0c267110-95e8-4bcc-a7ab-87e3fcb0717c	a0fbb030-d436-48cb-89d2-341c2957975f	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	11	\N
3b1d16be-d9b9-480a-8b69-24205cbcec1d	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	35	\N
256feacb-4401-4329-8319-d93e4ce3495c	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	5751738c-c73a-433c-8661-7fe5626f6d31	48	\N
8e62688c-7427-4ad7-8120-653fd518c389	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	8e28e046-03a2-4340-a140-2bc26e236542	21	\N
f7c92cd3-c4c1-4c66-9e95-74af146d5ae9	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	be92f4be-476c-416c-bf36-2c04f0a09107	23	\N
0059e7b0-b359-4f21-821a-5139fa2b5284	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	084270d6-359e-4f04-8f07-3ea02b6295c1	19	\N
c081a4a6-cb1e-47ca-9d58-ee4cc26eade4	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	41fc512d-a3a9-4373-a6e9-b121930c719f	25	\N
b2a579f9-5ca5-412f-b6db-3327440bae59	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	c5e7da9d-1212-46c4-812d-bdfea79d73de	20	\N
56c5b7be-a518-4246-bb5b-cdefe6038f09	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	162e7d48-047e-43db-a3f8-e01824560a44	39	\N
5e0b32ac-a1f0-426f-a3cf-8ce9897eb222	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	403711ee-8fb2-46c7-bd14-025257c8ea0b	23	\N
daee6757-f671-4bae-b605-e32ffa65687e	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	76207536-9b24-46e2-95c7-2ebb957204d6	45	\N
aac4bec1-feb8-41d3-b8ee-7455466af514	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	1db4284b-b1d5-466c-85c5-422f8d5860d8	15	\N
974b321b-51ee-4a04-b772-824b315216c9	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	7b8a8cd1-a654-41ab-bff8-3ee016a21383	22	\N
119987a7-afe0-4bb5-8fd3-231d3c66f6e5	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	8e417e36-b2e8-498b-a3c0-6237345c96ad	21	\N
5b72a536-4f6e-451c-b2d8-308fe308bcca	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	54a7f8d6-f067-4337-bea6-58f74e9c95c7	26	\N
d2599120-7b48-4048-997e-f4e54a459c2b	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	3fecedc7-832f-4968-80a3-57c58f5163c8	31	\N
fafbd26b-dcf5-4ac4-a6a7-ac98c0ecc721	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	37	\N
ccf24f03-a809-48fb-bb75-10c65818b711	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	2e40d453-9bc6-4fd3-9a85-453970544d7f	49	\N
8dc468a0-4a32-465e-95cc-0232854a9555	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	22	\N
47e92932-d48f-4609-99a1-38bbfdccbb94	b566d98a-186b-4e67-aaaf-c8b6d89fb612	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	32	\N
ef1fedef-def0-4eb2-8df8-70b07862ea74	b566d98a-186b-4e67-aaaf-c8b6d89fb612	5751738c-c73a-433c-8661-7fe5626f6d31	34	\N
4523f5db-d7a2-4b4d-a1ef-a9900bb75cc5	b566d98a-186b-4e67-aaaf-c8b6d89fb612	8e28e046-03a2-4340-a140-2bc26e236542	32	\N
9a12f792-b238-4a50-a5b7-ff423ea59237	b566d98a-186b-4e67-aaaf-c8b6d89fb612	be92f4be-476c-416c-bf36-2c04f0a09107	43	\N
443b038c-be28-4c4f-b75a-15fb0d269c0d	b566d98a-186b-4e67-aaaf-c8b6d89fb612	084270d6-359e-4f04-8f07-3ea02b6295c1	14	\N
7b193318-2188-4612-ae1b-28eeaf912665	b566d98a-186b-4e67-aaaf-c8b6d89fb612	41fc512d-a3a9-4373-a6e9-b121930c719f	27	\N
6a0acb1b-35ff-43d5-97ea-0ee54367ac35	b566d98a-186b-4e67-aaaf-c8b6d89fb612	c5e7da9d-1212-46c4-812d-bdfea79d73de	30	\N
051e509a-4beb-4df3-8417-c360403a00f9	b566d98a-186b-4e67-aaaf-c8b6d89fb612	162e7d48-047e-43db-a3f8-e01824560a44	22	\N
f3fe0b07-1351-4477-864e-4e281d0e7d68	b566d98a-186b-4e67-aaaf-c8b6d89fb612	403711ee-8fb2-46c7-bd14-025257c8ea0b	49	\N
65954b7a-cfb3-4f2e-a19f-f8f629b6bbc6	b566d98a-186b-4e67-aaaf-c8b6d89fb612	76207536-9b24-46e2-95c7-2ebb957204d6	42	\N
6d2275c5-bf1a-45b2-9a5f-72d89b2c2db0	b566d98a-186b-4e67-aaaf-c8b6d89fb612	1db4284b-b1d5-466c-85c5-422f8d5860d8	25	\N
7ec49c38-9731-483c-800b-c14f9b3ff041	b566d98a-186b-4e67-aaaf-c8b6d89fb612	7b8a8cd1-a654-41ab-bff8-3ee016a21383	29	\N
95cfc065-b373-4149-9305-8bae18af2cc1	b566d98a-186b-4e67-aaaf-c8b6d89fb612	8e417e36-b2e8-498b-a3c0-6237345c96ad	47	\N
db8b0834-90cd-493a-916a-7894446c1c17	b566d98a-186b-4e67-aaaf-c8b6d89fb612	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	\N
62bf3503-872b-42a3-9fe7-733fef55afa2	b566d98a-186b-4e67-aaaf-c8b6d89fb612	3fecedc7-832f-4968-80a3-57c58f5163c8	24	\N
7a57183c-ec87-4963-970c-6f0132d05892	b566d98a-186b-4e67-aaaf-c8b6d89fb612	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	43	\N
b388cda0-21b8-44ad-b545-28aef9c1e4e7	b566d98a-186b-4e67-aaaf-c8b6d89fb612	2e40d453-9bc6-4fd3-9a85-453970544d7f	22	\N
55e08e91-28a8-42cd-a483-0865845e52bd	b566d98a-186b-4e67-aaaf-c8b6d89fb612	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	39	\N
fd4f7912-defd-4214-b875-cad4a9ccc353	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	21	\N
65bee7ed-ba63-404a-9fcd-d71ff8b57be6	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	5751738c-c73a-433c-8661-7fe5626f6d31	26	\N
04e1d7ab-c778-4a8b-bfbd-2db7201b65e7	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	8e28e046-03a2-4340-a140-2bc26e236542	24	\N
836416bc-a02c-46cc-bd85-a62e75e81f7f	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	be92f4be-476c-416c-bf36-2c04f0a09107	17	\N
bac05143-8e23-4ff2-9578-c8b2f9bc82c0	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	084270d6-359e-4f04-8f07-3ea02b6295c1	15	\N
1b769f5d-60ae-4064-9c7a-12f5dfaeec80	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	41fc512d-a3a9-4373-a6e9-b121930c719f	45	\N
abf872f1-c0f5-4447-baaf-81ad15e4a0c5	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	c5e7da9d-1212-46c4-812d-bdfea79d73de	47	\N
b33e6dc7-372a-4f73-b7ad-6150a4b640d0	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	162e7d48-047e-43db-a3f8-e01824560a44	42	\N
deff8f93-8645-4e1b-8589-5c1cdc5a9ca8	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	403711ee-8fb2-46c7-bd14-025257c8ea0b	18	\N
36b1dfd1-f035-4466-a309-2fbe18e5ccb8	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	76207536-9b24-46e2-95c7-2ebb957204d6	15	\N
358969d9-7dbf-414d-aa98-8163c01766aa	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	1db4284b-b1d5-466c-85c5-422f8d5860d8	35	\N
83ba01df-983a-4787-aa3a-2269cfe60bbb	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	7b8a8cd1-a654-41ab-bff8-3ee016a21383	41	\N
1b140dfa-6b1a-4e37-bb7d-5d3ff58913f9	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	8e417e36-b2e8-498b-a3c0-6237345c96ad	27	\N
21a7b560-ea08-4688-8a40-08876e020993	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	54a7f8d6-f067-4337-bea6-58f74e9c95c7	45	\N
67d1e1a1-3aab-4286-83c9-f341aae1b8ec	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	3fecedc7-832f-4968-80a3-57c58f5163c8	18	\N
0cc6dd9a-3947-4d93-8723-5b75b54aa329	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	12	\N
954eb4fe-ad9f-4b37-bba5-b66918ecaa18	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	2e40d453-9bc6-4fd3-9a85-453970544d7f	10	\N
0b3a2d86-c284-42b8-8cb5-cbe4200a7fd6	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	35	\N
be0531b6-51ad-4b5b-9f3a-dcbb2dbc961f	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	40	\N
1560aa8b-404b-4104-834a-de5f4bf969de	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	5751738c-c73a-433c-8661-7fe5626f6d31	30	\N
a3ade8b4-99a8-405f-a36d-d41def528832	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	8e28e046-03a2-4340-a140-2bc26e236542	44	\N
0f88932c-91de-430e-8273-12943b2e06e5	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	be92f4be-476c-416c-bf36-2c04f0a09107	22	\N
3fe96443-1a0d-4484-850f-4f31b8474c49	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	084270d6-359e-4f04-8f07-3ea02b6295c1	12	\N
31cfe03d-562a-47bf-9ff9-00fd967c1097	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	41fc512d-a3a9-4373-a6e9-b121930c719f	26	\N
30da4a89-e1f9-4457-a85d-7931e4eee09d	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	c5e7da9d-1212-46c4-812d-bdfea79d73de	21	\N
39da0097-e274-4562-9b96-697ee6cac780	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	162e7d48-047e-43db-a3f8-e01824560a44	46	\N
68c9992b-cd79-4114-a299-46b11c52969e	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	403711ee-8fb2-46c7-bd14-025257c8ea0b	20	\N
29b1ed11-0d53-48df-a28e-7ac5d377ec68	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	76207536-9b24-46e2-95c7-2ebb957204d6	18	\N
624edcdd-b4ef-4dc2-8440-dc9f31d92bfa	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	1db4284b-b1d5-466c-85c5-422f8d5860d8	10	\N
ecb09e82-f9f2-49da-89cd-3f33ea5a5bfa	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	7b8a8cd1-a654-41ab-bff8-3ee016a21383	35	\N
e96f69dd-bfe0-46cc-95c0-ad5135e105e3	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	8e417e36-b2e8-498b-a3c0-6237345c96ad	42	\N
9c81fb01-a34c-40ab-ae89-2b2a8f297d72	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	54a7f8d6-f067-4337-bea6-58f74e9c95c7	13	\N
b4ac31e6-2349-40f5-9a1d-cec452a0d8ab	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	3fecedc7-832f-4968-80a3-57c58f5163c8	46	\N
b341ec52-f3a8-4218-b9c2-eaad5831cd90	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	39	\N
9e013710-dae2-4dbf-9410-bac16b1024a7	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	2e40d453-9bc6-4fd3-9a85-453970544d7f	29	\N
62f5227e-c43c-4d0f-a765-6af22b4228cf	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	11	\N
19d9eace-76f2-4d15-9579-9055bbb7e569	71402220-5075-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	39	714022205075
4c040276-e335-4ea7-afed-856193eac127	71402220-5075-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	24	714022205075
a65ec4fb-bdf9-43b1-a29f-c3d2181d317d	71402220-5075-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	12	714022205075
93ffc359-8562-4790-b378-8aeceefc41b5	71402220-5075-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	48	714022205075
fe2e0707-1487-4a11-bb56-e244b3086f60	71402220-5075-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	43	714022205075
22d48541-5fff-4771-87e4-b3786ffcae58	71402220-5075-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	26	714022205075
329e43f6-f492-42fe-83bc-597c34053d5c	71402220-5075-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	27	714022205075
e88e1dca-875d-44ab-9cb4-45f503fa5293	71402220-5075-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	53	714022205075
c3db76f5-fb16-4b22-bffa-bf9c091eac57	71402220-5075-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	27	714022205075
9df60732-0736-41c9-9674-407e29100262	71402220-5075-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	94	714022205075
8a854680-d64e-466d-a4e3-530b297bcbe8	71402220-5075-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	86	714022205075
773d0314-a589-4f46-a93c-fe23ed724f9a	71402220-5075-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	83	714022205075
29f09e87-9721-46ee-9f52-6e516ea66d86	71402220-5075-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	67	714022205075
94f892ed-5497-44e6-93e7-1c0d6519868e	71402220-5076-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	46	714022205076
aba6da91-4ae2-4cd4-81c3-0d11391e9c26	71402220-5076-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	17	714022205076
6b3e8f80-bd1c-4f90-8965-4f8084c976c1	71402220-5076-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	20	714022205076
6314e411-44ed-4eca-836d-ebd9a1b3f061	71402220-5076-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	31	714022205076
897279b6-f720-43f6-928b-8ab92fb70607	71402220-5076-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	33	714022205076
cdd2f3a4-f0ac-4ace-bfa9-49bea8df82e5	71402220-5076-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	44	714022205076
2b540dbd-feb5-4da2-817c-a95eb4a61d78	71402220-5076-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	37	714022205076
6a036106-8b93-4e83-9a43-454a9ab9c237	71402220-5076-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	39	714022205076
f2064d7b-3de3-4abc-928f-5cc6ef832723	71402220-5076-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	47	714022205076
e0aaa769-f3b7-4343-b50e-6a39bf6e413b	71402220-5076-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	36	714022205076
2924b29a-0d28-4db7-967b-4fd112649e15	71402220-5076-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	24	714022205076
e35ae895-7df8-4794-b622-9442271f9856	71402220-5076-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	20	714022205076
f4385574-4f9f-4731-9c2a-093f356add17	71402220-5076-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	40	714022205076
7288b40f-e0d6-4ae8-aee3-262ee0f73912	71402220-5076-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	714022205076
7d1678de-91db-4b61-bcde-c362243f7cfd	71402220-5076-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	43	714022205076
aaf1de02-e62c-41d1-9053-48d10952adb6	71402220-5076-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	26	714022205076
eb0918cf-9d81-4d47-b90b-97a33d6f4015	71402220-5076-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	33	714022205076
e0ded6a4-b9cc-43b7-8193-1c110150eba6	71402220-5076-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	22	714022205076
ed6715df-acee-45ed-894b-17abad7c9f7c	71402220-5076-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	17	714022205076
ff9ec009-0eae-4207-9026-10073147e03b	71402220-5076-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	77	714022205076
91e3533a-59be-4ea5-8088-6bda2126c64c	71402220-5076-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	57	714022205076
d840876f-48a9-4ff5-95ea-1d3cf790ff02	71402220-5076-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	100	714022205076
9fee2e87-f58e-402c-8f07-38484ab42bab	71402220-5076-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	66	714022205076
7af0035d-25d8-4ac0-a909-3d3d77fcea7a	71402220-5076-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	29	714022205076
181048a2-c673-4f17-a496-32e5bb41cb2f	71402220-5077-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	46	714022205077
7c043fe3-4757-4a0d-93ba-c1a9cad0e687	71402220-5077-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	29	714022205077
6aa94c62-191f-4e5f-a56d-e197e500b258	71402220-5077-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	43	714022205077
d6a98511-6ec3-4912-b23f-061d0ad3652a	71402220-5077-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	30	714022205077
1307e02a-7b9f-43ce-8b57-dbab2020df6d	71402220-5077-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	23	714022205077
b783def3-e7bd-42e5-835d-c1886b4bf89b	71402220-5077-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	49	714022205077
751de32c-33a8-4e6a-886d-c772f2a2b1b0	71402220-5077-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	32	714022205077
8aeca118-a19d-475b-98ec-f7120b3eeefc	71402220-5077-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	15	714022205077
19257c8a-3866-4f5c-bba2-3228b8464897	71402220-5077-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	27	714022205077
9f19cc2c-3c2a-4aba-980d-57978396d3df	71402220-5077-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	18	714022205077
d99ed275-74fe-4ae3-97ca-63d09faf0c01	71402220-5077-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	11	714022205077
f59c9a11-03a0-4673-a3e8-6f2220a1145c	71402220-5077-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	12	714022205077
aaa4c72f-68f9-4573-9911-cb97f2193aa3	71402220-5077-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	17	714022205077
5fcfa3dc-26c6-4aa6-bfc1-e5b9eb0df334	71402220-5077-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	15	714022205077
843c6c0c-4fc4-4379-954f-26272b3ca8eb	71402220-5077-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	37	714022205077
f80fe670-90fe-4db2-a070-36edc5e4e863	71402220-5077-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	35	714022205077
b5745f12-00fa-48c8-bb8a-b571405b8443	71402220-5077-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	27	714022205077
1bf5d7a4-b205-44c9-b0ac-4e97a82d383d	71402220-5077-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	48	714022205077
15108571-b904-498b-b9e0-a81e72dc22a0	71402220-5077-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	92	714022205077
471e7599-7486-4c1d-b015-92bde7703b25	71402220-5077-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	81	714022205077
98319feb-16fd-47fe-bd90-fbae865734e2	71402220-5077-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	17	714022205077
9c5a99d1-cef4-4cc1-b469-25c2ff070410	71402220-5077-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	98	714022205077
511288ef-092f-4903-b85a-ce0ade3377fe	71402220-5077-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	48	714022205077
d5a296a4-c553-4af6-8704-ea4a36822650	71402220-5077-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	47	714022205077
a47bd016-68bf-4dd0-91a3-d27f1fde4214	71402220-5078-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	14	714022205078
8fd3d156-4738-41d5-bed0-533abf13297a	71402220-5078-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	50	714022205078
291a8efe-9cbb-4f74-9a27-bb2d13a794aa	71402220-5078-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	16	714022205078
9dd8f87a-d982-4dbf-a069-cb0e6fc4589e	71402220-5078-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	48	714022205078
f975420b-549f-4b07-8b43-5d74d1e473be	71402220-5078-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	44	714022205078
563d4940-f59f-433b-8bcd-1753eed05278	71402220-5078-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	33	714022205078
49b6a582-dfa3-480d-8078-7430f652d430	71402220-5078-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	27	714022205078
3b05f224-a5c2-4019-b089-c7fb04c6ca7e	71402220-5078-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	39	714022205078
df7c9393-3f8b-4dd5-b5f6-7c48e2a246db	71402220-5078-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	22	714022205078
6ff5f42c-bb8c-49e7-ae35-ad7dcd0004a4	71402220-5078-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	44	714022205078
ee3d75af-ecf3-419d-a52c-7d1c85707551	71402220-5078-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	11	714022205078
41cc8355-2b56-4cf6-a051-84c3ce4333f9	71402220-5078-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	25	714022205078
f6b91fe8-51bc-4b75-8fc1-5cd823f0d62b	71402220-5078-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	13	714022205078
fa4297af-5664-4d2b-8e20-3e129fecc7a3	71402220-5078-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	10	714022205078
7c6e1547-3773-4973-8e29-12fa0aa4ee29	71402220-5078-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	30	714022205078
15992b06-3840-41df-88ab-c29dde11e2b2	71402220-5078-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	40	714022205078
e7ca8177-7c22-4b8a-80f7-3574b6b936d8	71402220-5078-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	20	714022205078
07420814-eb5f-4ed3-9e86-f730609040ed	71402220-5078-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	23	714022205078
bb6c139c-db13-4c81-91be-35f82172cae4	71402220-5078-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	80	714022205078
115dd82d-1cb6-41a9-8a6d-9e28ec17bc0e	71402220-5078-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	49	714022205078
91f074c6-4ecb-49e4-884c-e66a9816de72	71402220-5078-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	23	714022205078
68a2f16f-9eb7-474b-9587-1f8546528e62	71402220-5078-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	25	714022205078
f4f71522-34a0-4008-bb6c-071adfd26151	71402220-5078-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	28	714022205078
b4d3a7ac-9d55-4955-b60b-d459c851e5bb	71402220-5078-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	53	714022205078
95195769-c15e-4db7-b349-54a0ff4911a3	71402220-5079-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	14	714022205079
dc6d8bc0-9236-4dc0-9a86-2bd1e2be4b1c	71402220-5079-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	17	714022205079
72f268ee-6235-4bd9-be97-6e772d23a380	71402220-5079-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	46	714022205079
d53e1809-11ef-44ab-813b-143eb68e4b7b	71402220-5079-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	11	714022205079
66add896-b7f0-4174-8148-af66f393c2ec	71402220-5079-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	15	714022205079
82858ca2-9c57-4f8e-b312-9d42cee3206b	71402220-5079-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	32	714022205079
4c941df6-cbe4-4295-af4c-edb5cb0ea38e	71402220-5079-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	29	714022205079
7dcc282d-1119-466f-a4cd-620d8f1899f5	71402220-5079-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	18	714022205079
10451b0a-5090-408e-bcc8-90a76b18003f	71402220-5079-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	37	714022205079
3b33f0ee-4e4b-45d8-bf4a-e791539fc9f9	71402220-5079-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	19	714022205079
f711c8a2-0682-423e-8e2b-2f86c82266f4	71402220-5079-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	34	714022205079
3ccca3d5-fa56-49ce-ba4f-528073b62b85	71402220-5079-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	27	714022205079
d10df7ab-cbf1-40ad-bd42-26fa80b6050f	71402220-5079-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	29	714022205079
0067c8c9-e92e-4efd-99cc-dab9f5f26144	71402220-5079-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	41	714022205079
ad1c74ab-f748-43f8-bd5e-3e48cdd1a028	71402220-5079-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	39	714022205079
6af0b200-1a90-4f7e-b5f8-04c44cc5deb8	71402220-5079-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	21	714022205079
44fdc205-7f13-46d3-a648-884530e572b9	71402220-5079-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	40	714022205079
bb770d61-f719-4c78-8b76-52481e5d4549	71402220-5079-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	40	714022205079
d72ca20c-ffd1-4780-88ec-9009504fa9dd	71402220-5079-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	29	714022205079
a24abc51-10b6-4d03-a3ec-24fe0c5e3813	71402220-5079-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	52	714022205079
9274e331-efe8-47e8-8164-98e83fd0072d	71402220-5079-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	86	714022205079
44aba539-461f-4ae1-9a78-ad77bd2e4962	71402220-5079-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	91	714022205079
ac743d3b-e1ec-44b2-be6d-57f3d789d3be	71402220-5079-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	49	714022205079
6045e1d9-947d-4b3d-8bf9-4910e7566724	71402220-5079-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	59	714022205079
9a918872-51c3-4d11-8b8d-d7cf45cb74f6	71402220-5080-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	25	714022205080
894b2d11-9bf0-4267-8a47-35e0101a69cc	71402220-5080-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	11	714022205080
d6bf82a6-3778-48c0-a4f3-005b4b6cea91	71402220-5080-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	24	714022205080
e7b74a2c-7eb3-4aeb-9b59-f1c708204584	71402220-5080-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	22	714022205080
66d6b44f-aa4c-485b-8ecf-bd2c4312270f	71402220-5080-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	46	714022205080
08fc3f88-5d5e-41bd-9cbf-326a522668c2	71402220-5080-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	17	714022205080
a168c96e-188b-485e-ac73-ccd48b8904a5	71402220-5080-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	20	714022205080
cde44d6c-a2f6-45bd-b511-8df84d98c5aa	71402220-5080-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	48	714022205080
75680850-e6fd-4736-aabd-6c7163a1819f	71402220-5080-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	32	714022205080
1ee55563-e5c6-42e7-85b0-07a2a3ce9ab1	71402220-5080-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	25	714022205080
659eded9-43a5-493f-804a-1e2026d084f7	71402220-5080-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	16	714022205080
fed64fea-46ee-4ab0-aaf6-5f995305c1f4	71402220-5080-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	47	714022205080
3c47a3a8-3f1e-4de0-8b2b-0db1b8dc5bd6	71402220-5080-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	26	714022205080
d2c97f36-5e9e-4325-ab22-3acf2da47720	71402220-5080-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	31	714022205080
06e34073-71f6-4a58-963d-fed516efb1b1	71402220-5080-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	49	714022205080
82ece6ac-99cf-4e81-ad43-82423b8f0563	71402220-5080-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	45	714022205080
d1b476dd-2c89-4f02-959e-247a677ae362	71402220-5080-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	41	714022205080
3d7469e8-1c5f-4aac-ac8e-62f906bd7cfd	71402220-5080-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	49	714022205080
c34d0984-fb39-4f2b-9402-ba5090ced291	71402220-5080-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	38	714022205080
0290872e-cca1-4df5-84a9-cfe60bc854b8	71402220-5080-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	25	714022205080
e6fde0de-074c-42f4-badd-6c5f73de02b3	71402220-5080-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	18	714022205080
6d8f295c-622b-47dc-95e6-d9481ab71d5a	71402220-5080-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	92	714022205080
99555e13-9541-431e-a138-c85bcac1d000	71402220-5080-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	32	714022205080
13ac2a3e-6a68-4f01-8914-5d53c3cffb76	71402220-5080-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	48	714022205080
0e3dac7e-c7d2-4e28-9ca1-b46bb9e288ac	71402220-5081-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	11	714022205081
25f255a5-aa74-4997-8e0a-8353e8e46a9c	71402220-5081-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	15	714022205081
f8568b58-999a-4926-af49-49848475b8e4	71402220-5081-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	35	714022205081
3926f628-54a7-4485-be1f-9c604e79a7e6	71402220-5081-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	29	714022205081
35eaae71-3e7b-4425-bf8c-6a5bd43519cd	71402220-5081-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	23	714022205081
551a6e93-8ec1-4c5c-afdd-e5dbaee16cec	71402220-5081-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	32	714022205081
e43c99fa-866f-447a-bb63-243d3f5b1cef	71402220-5081-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	15	714022205081
43b85ae2-11bd-4df1-96e8-c7f6ea343e6c	71402220-5081-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	36	714022205081
561a7573-3eb1-4ff1-887c-2c0e780ac9f3	71402220-5081-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	38	714022205081
5305ed57-e77c-440b-ae09-c6169e3df96e	71402220-5081-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	42	714022205081
62998f73-7472-41c3-be69-48f901a2cd27	71402220-5081-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	42	714022205081
7f9ac5ce-8673-4737-af26-e55437b12e0a	71402220-5081-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	42	714022205081
279db1fb-5843-41b4-8e57-90a41c27f99f	71402220-5081-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	21	714022205081
4a747dd9-18e0-4d1d-b852-48dfa2a23973	71402220-5081-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	24	714022205081
8dea78f8-b4e1-4035-95ad-991d31bf1d05	71402220-5081-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	49	714022205081
1da2d80b-d53e-4dd9-9057-728e9f164c53	71402220-5081-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	24	714022205081
2355cfb4-8043-40cd-8ff3-8d43e1c73383	71402220-5081-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	12	714022205081
6f0cc764-d735-4e5a-8638-884f6e2e65fc	71402220-5081-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	22	714022205081
cd7e88e2-9c49-4359-99b3-4aab28a90e5d	71402220-5081-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	33	714022205081
5f247770-3078-4b23-af6f-3b182bac4ac6	71402220-5081-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	28	714022205081
8dd19ee3-ba8e-409c-824d-d2dc09845000	71402220-5081-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	99	714022205081
ad7d2ad8-4df7-44a2-be10-018b48093eb3	71402220-5081-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	39	714022205081
45a8eaa0-47ce-43fc-a7f5-05c2b24e47f9	71402220-5081-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	33	714022205081
d4669583-7e65-4eca-99c6-5b09d19518b7	71402220-5081-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	21	714022205081
6c92126e-69f9-4155-ad80-eb3e5cdac45e	71402220-5082-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	41	714022205082
f2450079-ed19-476f-bbda-cf9b502480d9	71402220-5082-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	25	714022205082
7d009c26-34df-41fe-a8e7-0e0c0bf2b517	71402220-5082-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	25	714022205082
f318d5ff-336d-4260-97e4-5edc6b5fc6c1	71402220-5082-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	45	714022205082
1da56c83-ceb3-4838-ae19-705ca63bd3d1	71402220-5082-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	36	714022205082
ad73df92-d34e-4c86-a24c-cecf41e389aa	71402220-5082-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	40	714022205082
1ba5037d-c639-419c-bd13-2da2de72c663	71402220-5082-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	13	714022205082
89e798ad-526a-4b9e-b3bb-d68e570fff15	71402220-5082-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	17	714022205082
5cde2ffd-232c-4bdb-a47b-44216f8e5d44	71402220-5082-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	16	714022205082
971c95c3-fc63-4f0c-9998-8d2d38c7a526	71402220-5082-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	45	714022205082
8e032e5f-ad12-4ae5-a0b5-8d11b234821d	71402220-5082-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	19	714022205082
a59cda56-3e82-4537-bfdc-83e9dc3607ce	71402220-5082-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	25	714022205082
f4eb8827-ab9c-4ff1-b7d9-cc6b99820346	71402220-5082-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	35	714022205082
22e115cf-d875-43f6-9477-747a55a3302e	71402220-5082-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	21	714022205082
c699b335-8f8e-4687-a1b0-cb1826c29c13	71402220-5082-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	31	714022205082
e9f49217-78d4-477e-99c7-97ba31991aae	71402220-5082-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	39	714022205082
554519ff-acc9-40a5-b170-d977d6087264	71402220-5082-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	31	714022205082
e829996f-dcb5-4195-9933-5268d4509304	71402220-5082-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	45	714022205082
3bd3df2a-7812-4fce-be8a-701fc3c10125	71402220-5082-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	31	714022205082
9baf816c-b924-4040-bf42-06bfe64b0904	71402220-5082-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	67	714022205082
aad6d6aa-a749-4eb3-9ba3-4aa886c4d959	71402220-5082-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	49	714022205082
b3a69cfe-7ed6-4a60-9019-30525f6113cb	71402220-5082-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	86	714022205082
0232658e-ec88-4f83-af91-ccb6c5702961	71402220-5082-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	16	714022205082
9cce945d-6013-40d5-9945-90a021a1e04f	71402220-5082-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	100	714022205082
4d018154-783e-4518-b9e0-8241d0ff2151	71402220-5083-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	17	714022205083
05928c55-6fd7-4324-9bc7-9aa8b9374228	71402220-5083-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	15	714022205083
ae4d53ce-f1d7-478d-b8a4-38a22093f211	71402220-5083-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	27	714022205083
c3f78c2b-fc68-4992-963a-fb871e3a15ab	71402220-5083-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	17	714022205083
57ea69c6-e045-4c54-9fb5-bf96c10f79db	71402220-5083-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	21	714022205083
db5e49c4-7d8b-49ab-96a5-abf8523b3730	71402220-5083-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	18	714022205083
6b5615d5-4fd8-46f9-9db0-e8fff1220f86	71402220-5083-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	38	714022205083
bebb517b-2039-49cb-911c-fbbcf0ed386d	71402220-5083-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	29	714022205083
a3d5949e-e3f5-449a-89a8-803c9e35093c	71402220-5083-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	48	714022205083
8b17995d-7d51-4487-aabd-1bf0ef02bdfc	71402220-5083-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	22	714022205083
99bd6d8b-4ad3-40f4-9235-b33cef5fe7e3	71402220-5083-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	16	714022205083
e69f598a-37ce-4c46-8ed1-ddfa697272cb	71402220-5083-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	27	714022205083
ac8ddd61-23e1-4f4f-82f8-6f3a99524fdf	71402220-5083-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	12	714022205083
7f3f1338-6a16-4961-a183-11f8b4266d11	71402220-5083-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	41	714022205083
37552d08-b0ba-4dbc-aa4b-080fa35d8619	71402220-5083-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	20	714022205083
427e4bb2-6979-43b0-a3d4-f59408247c22	71402220-5083-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	30	714022205083
0524ec91-981c-46bf-8fd8-a2250616f3b8	71402220-5083-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	31	714022205083
a2c36b6e-fc29-49e2-acbc-fed3d3fafc4e	71402220-5083-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	33	714022205083
5a45fb1e-924a-47cc-81f5-1d1b98549628	71402220-5083-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	52	714022205083
285c28e9-db46-4fd2-bb3c-12668e0e75ba	71402220-5083-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	18	714022205083
0d998eaa-76ae-41d6-bfcc-c90b8c2a403c	71402220-5083-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	51	714022205083
d4b448f6-c9cc-4f69-b849-7e739040e0e0	71402220-5083-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	25	714022205083
a525d792-b9eb-46d7-9955-ab8e76a82a5a	71402220-5083-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	97	714022205083
d015504a-a033-4829-9092-6af5e03c6b75	71402220-5083-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	82	714022205083
5c2b4c25-d21a-4b55-87cf-04d3a018f99c	71402220-5084-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	45	714022205084
4b4ce49f-da16-4af7-9639-2247340ba3ce	71402220-5084-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	31	714022205084
9caf5289-9075-4b50-b5fe-6cd4cdaf839c	71402220-5084-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	41	714022205084
a70f12f1-e6e8-4833-98de-3079053b8683	71402220-5084-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	37	714022205084
223ab1c2-5204-4d04-8ccc-1e311e5b1ce8	71402220-5084-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	38	714022205084
015eb3b7-d024-4a11-9354-9eaf16165b58	71402220-5084-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	12	714022205084
8910aa95-76ea-46f2-b61f-4cab60d2f1d4	71402220-5084-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	50	714022205084
3b8ed522-979e-44c5-b659-f0a0e8c05d85	71402220-5084-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	15	714022205084
7508f23b-41ea-4b28-a055-c95de373fd6c	71402220-5084-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	19	714022205084
d6be4357-57a2-4816-8e65-1c5476f7cc6a	71402220-5084-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	45	714022205084
e7c53a2a-f24f-474c-a92c-8a98db336ab5	71402220-5084-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	20	714022205084
04dae90f-b303-4cf4-a350-52952387f44c	71402220-5084-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	39	714022205084
438fbc64-e718-4c66-88a3-536bba60d8a4	71402220-5084-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	50	714022205084
712c97c6-e16f-4e7c-b832-5a6d1be6f194	71402220-5084-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	22	714022205084
2c1b1912-0d8c-454a-8af0-e0cd14db455e	71402220-5084-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	48	714022205084
ec4f3af4-9f7a-48ce-9cab-651c465fbeb2	71402220-5084-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	14	714022205084
a67df0b1-9833-4c1a-a3aa-7bcf15f4752c	71402220-5084-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	23	714022205084
df601f1a-23c0-4b8b-aa8f-a71476bf0a29	71402220-5084-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	35	714022205084
707b8a34-fe69-4d73-a145-4eb7b1a75c69	71402220-5084-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	13	714022205084
5f32ef34-a18a-4e46-91f7-83d75599e203	71402220-5084-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	89	714022205084
f0c5238f-ce1b-4f75-980a-8e84c4d48c87	71402220-5084-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	46	714022205084
6a63bbe0-8b6f-4eec-b4df-b358c8b8a9b3	71402220-5084-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	17	714022205084
cfed3676-d528-43dd-ad3c-b0f74a29dd3f	71402220-5084-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	62	714022205084
65701521-3762-4070-84c2-064c33896439	71402220-5084-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	62	714022205084
647b5385-8c99-49a8-92e0-9acf68bb69f7	71402220-5085-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	40	714022205085
8bcb9940-53b7-4973-8ee4-7f4435e6ebbf	71402220-5085-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	37	714022205085
11fc62ec-f99b-4525-9ca6-029fa31fa79f	71402220-5085-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	33	714022205085
7d0ff535-68b3-4b01-bb0d-9a9365a05029	71402220-5085-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	30	714022205085
a23d5a1a-fca9-4739-9419-a563f2128d75	71402220-5085-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	24	714022205085
3adb9f75-5070-4983-96b6-d0a11f177d87	71402220-5085-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	28	714022205085
0fa5d296-b934-4a50-b1fd-4b3233ff9276	71402220-5085-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	48	714022205085
855eb523-0513-4351-9272-26b6df4641fd	71402220-5085-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	48	714022205085
57224ff8-b533-4faa-b333-7fea7a00ec6b	71402220-5085-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	31	714022205085
4f75ebad-bcd6-4b10-9e09-6667a1cc1f1f	71402220-5085-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	26	714022205085
09a45f77-d3bc-4877-bc67-08a09d63a08e	71402220-5085-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	22	714022205085
a47fcfbb-5d1d-495e-8a04-bd45199480a9	71402220-5085-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	23	714022205085
3ff67311-f0e7-406f-bacb-7d5506670206	71402220-5085-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	49	714022205085
48c8a22a-16ba-4827-870c-a17e3d045190	71402220-5085-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	49	714022205085
ac64fcd9-147d-492d-9106-395945a518b8	71402220-5085-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	39	714022205085
73d46695-4e6a-4566-aa30-91ed5a6f0031	71402220-5085-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	17	714022205085
e4e40229-67be-4a12-9595-5b78a5f0ad53	71402220-5085-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	32	714022205085
177af9b3-1d12-42bb-a57f-8b4a0c1dcca2	71402220-5085-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	20	714022205085
6067b759-3614-4d00-abf8-9a70826844fb	71402220-5085-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	14	714022205085
d8a27aa2-f9b4-479b-9e01-17396ad17e01	71402220-5085-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	29	714022205085
8e8a8355-f623-49c6-bbe2-c5fea7612304	71402220-5085-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	59	714022205085
45a68708-4679-41b7-a40c-12205f2b57f6	71402220-5085-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	85	714022205085
bf74339b-8ca0-4811-814b-32a9bd50a809	71402220-5085-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	77	714022205085
e1c57d26-2660-47eb-93fa-814be54fd8e6	71402220-5085-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	59	714022205085
bff1515b-6ad0-4775-8e2a-429833664a9b	71402220-5086-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205086
0742bcd1-ebd7-4c1c-ad1b-953ee2fc3d29	71402220-5086-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	42	714022205086
5c2671bf-2542-445e-8d3b-90d8dbec6b78	71402220-5086-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	21	714022205086
5e889932-81d5-4161-ac90-f01e3dd71758	71402220-5086-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	19	714022205086
5cf4e782-51ac-438e-a438-423b81e0f6dd	71402220-5086-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	18	714022205086
49b9056c-6b6c-46ad-8943-5955123f3f99	71402220-5086-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	44	714022205086
3242e4bb-2fda-40e4-87a1-e5dc624716dc	71402220-5086-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	35	714022205086
80719eda-46aa-4400-8a98-3f431d77901e	71402220-5086-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	34	714022205086
18a57971-cc1c-4060-b77f-3f6826b93f2f	71402220-5086-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	49	714022205086
e906907e-a569-4e34-95c9-374a7dd996bc	71402220-5086-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	18	714022205086
96c77d34-c205-4a69-aac4-41458a822a8d	71402220-5086-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	17	714022205086
98d43470-8de2-4dab-bc07-7694feaae3e4	71402220-5086-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	39	714022205086
23bcae91-a732-4167-af9a-ca67aa9e4e45	71402220-5086-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	37	714022205086
2e49ea88-dd3c-4cd2-bddf-f91025022195	71402220-5086-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	20	714022205086
162a58db-1dea-42aa-b837-7385540d4816	71402220-5086-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	20	714022205086
82c7d4fa-d41a-403a-8435-821e4324740f	71402220-5086-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	44	714022205086
24356481-3cb6-49b5-8a93-284bddfd2ecb	71402220-5086-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	10	714022205086
ef521eac-447e-4f83-bb90-8f3205250d23	71402220-5086-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	23	714022205086
a8c243d4-7bd0-4658-bed0-027729fa7537	71402220-5086-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	63	714022205086
4b6f5ed8-5bbe-447d-8ec0-5ca29e9bdc43	71402220-5086-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	90	714022205086
06f47627-abb3-4f38-9d46-a6c8a79a86ba	71402220-5086-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	14	714022205086
8cc41d62-f1d7-4651-b499-3c4a8e313e86	71402220-5086-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	93	714022205086
7fcdf7a2-a3f9-4a75-9fe6-b79022308ecd	71402220-5086-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	50	714022205086
66d54d16-19bb-438c-9626-ad796364bcd9	71402220-5086-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	40	714022205086
f1cfcc7f-98e6-4b4f-991d-6e235bb86161	71402220-5087-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	26	714022205087
40fe7c9f-71bc-4264-b171-e6e9fe6f1d97	71402220-5087-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	28	714022205087
f89b6852-8a62-450a-a889-17ffeb34ec2f	71402220-5087-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	13	714022205087
2666321c-df16-4cd8-a341-06f42f47c594	71402220-5087-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	25	714022205087
6281b38d-81f7-483e-a9c7-cf3940a03c05	71402220-5087-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	47	714022205087
1cbfc6bf-1651-4462-a4ca-bc0fbaccd877	71402220-5087-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	45	714022205087
a0a81571-0f6b-439e-9dc8-9a6850fe774a	71402220-5087-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	23	714022205087
70ae0c24-5f1c-43f2-a98d-963ee7b41541	71402220-5087-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	27	714022205087
9419681e-2aea-4e11-b414-ef94ff4f9abd	71402220-5087-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	23	714022205087
eaf29a9f-452d-41ae-88fb-96588b0fbc95	71402220-5087-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	44	714022205087
7609b681-cb04-4a20-9c9f-23a276e610a7	71402220-5087-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	26	714022205087
19f71da9-5f42-4277-a0d9-608bd00fb159	71402220-5087-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	27	714022205087
ab0730ce-6e46-4a1a-8280-f5c5f452f2bb	71402220-5087-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	29	714022205087
d06dcb84-6118-44be-aa40-ef18dc0eed46	71402220-5087-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	46	714022205087
0ba41df6-3147-4acf-a6a6-e9532dc95d4f	71402220-5087-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	42	714022205087
9b57e3b4-3333-457d-8acf-2d0395c63fa8	71402220-5087-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	36	714022205087
e0adfea7-c9b4-4f8e-9439-01503404aa60	71402220-5087-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	26	714022205087
c0fd410d-15df-4f95-a1bb-19274c77ecd3	71402220-5087-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	20	714022205087
792431fa-8af8-42f3-b346-4d2a3644b0f6	71402220-5087-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	84	714022205087
160f602d-04f9-440d-801e-ed3e03becbb7	71402220-5087-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	26	714022205087
9eec996e-b672-4429-a6aa-9c400e24af56	71402220-5087-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	64	714022205087
ebca816c-b86c-4a3b-8609-dfe54703502b	71402220-5087-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	47	714022205087
23395b44-6bb3-4aa8-8a0e-5877d605f4b1	71402220-5087-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	23	714022205087
68f7dc0b-52c9-4dd1-9337-15b8f7399cf3	71402220-5087-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	33	714022205087
fc262368-91ad-4cb8-b3f3-4618a4600c4c	71402220-5088-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	13	714022205088
d9ce460b-eeda-4344-8b86-9fd6ff2458da	71402220-5088-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	40	714022205088
e97a8b7d-9d04-4c17-8c7d-32adeefc4eef	71402220-5088-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	11	714022205088
84ad9914-87e6-4fe9-84c5-f287ed9d942c	71402220-5088-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	45	714022205088
5136689a-187c-48dd-abc3-750d99d22193	71402220-5088-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	47	714022205088
39643515-b1ac-452e-afa4-f28ba18e7236	71402220-5088-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	26	714022205088
27d7228e-3701-4610-9ae6-4cbd56cc736a	71402220-5088-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	39	714022205088
9b5a6feb-058a-4dc9-9ac6-4446ac20216d	71402220-5088-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	23	714022205088
3a968a11-d001-4650-8dd7-622620f38be1	71402220-5088-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	31	714022205088
81fbcd70-b940-4d08-82d9-c8d633ca5c14	71402220-5088-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	12	714022205088
72787f5c-f2bf-44b4-b664-5dfeaaaa806e	71402220-5088-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	36	714022205088
8a21af3c-5c37-4598-8920-8cd043d9e499	71402220-5088-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	13	714022205088
ea03ffaf-7cbc-4b9d-ba9d-486979851d24	71402220-5088-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	41	714022205088
5171748c-c335-4a8e-b760-0e3cb7c9eda0	71402220-5088-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	29	714022205088
96e16b05-ca22-4202-b484-4004bd82a56c	71402220-5088-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	36	714022205088
f8d7e24b-3749-4649-8362-b06553331415	71402220-5088-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	40	714022205088
d7e2ced7-ec1a-404a-b127-c077ed4d2f65	71402220-5088-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	13	714022205088
685355df-50db-4cdf-a724-08b9a915e824	71402220-5088-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	29	714022205088
6c62371d-d9fa-4c7d-bc30-49048fdc35aa	71402220-5088-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	96	714022205088
973eabbb-b12a-43ee-9498-4d404d571185	71402220-5088-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	38	714022205088
35e3b98c-d286-4d83-9466-b91636af4973	71402220-5088-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	26	714022205088
daed1e1d-b8d4-4389-91ca-13378c71ec90	71402220-5088-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	56	714022205088
02f378cf-0ebd-4178-b088-93303effad92	71402220-5088-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	26	714022205088
2d4a4aa4-d371-4e2a-b358-1a2766fa8143	71402220-5088-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	92	714022205088
9161d257-ca5b-4ee4-934e-21d3025c1bab	71402220-5097-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205097
9021477e-6552-4b49-93a3-c770633ecf5e	71402220-5097-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	22	714022205097
497221b1-03c5-4207-9b4a-c4b2f7e2181b	71402220-5097-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	37	714022205097
15f7c921-2667-417d-af9f-a58432c802f6	71402220-5097-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	47	714022205097
baf3098e-dcf3-4213-aef1-1de72bd3eee3	71402220-5097-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	35	714022205097
968e049e-c992-4517-af16-3415ba2409c4	71402220-5097-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	49	714022205097
60d13f3f-6923-4ac6-a73c-cb0bfa5304d2	71402220-5097-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	17	714022205097
357b5749-6043-4e40-81f3-3c3f7619e4d2	71402220-5097-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	20	714022205097
16e10357-1cea-4814-83c9-5cff12974d88	71402220-5097-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	26	714022205097
ab69ced5-df6a-44b1-93b4-65285d8d6a85	71402220-5097-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	37	714022205097
1891681e-cf5b-4eb2-9f6d-06d90f50db17	71402220-5097-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	45	714022205097
2a7d7b54-14d8-4bb4-9487-fdcea63fa22b	71402220-5097-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	36	714022205097
816dffa7-9998-496d-9581-52d348ad8644	71402220-5097-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	26	714022205097
59e6e003-0a1b-41af-adaa-e794a74c159a	71402220-5097-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	714022205097
a9f0d367-4f16-40d0-af5a-5b29adcfc195	71402220-5097-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	38	714022205097
3f0d6eb9-bcd8-4237-969d-a08374ebcf39	71402220-5097-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	27	714022205097
bbeef7f5-6a33-4b29-9729-3b2379bc1b9b	71402220-5097-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	44	714022205097
c80182ee-3916-4a69-9b89-1dcd0203063c	71402220-5097-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	42	714022205097
02207bd1-a105-4c50-9946-a7268f29b413	71402220-5097-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	64	714022205097
71e6ac82-8d3d-4493-a73d-c0f8212cb5fb	71402220-5097-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	40	714022205097
12574e0e-7079-49fa-8627-585b3867ab40	71402220-5097-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	13	714022205097
b8dc0a67-d896-4726-882b-4ff6367925de	71402220-5097-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	28	714022205097
453c5d81-5d14-4885-9487-0dddb4afbbc7	71402220-5097-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	68	714022205097
f092301c-85e0-4376-a85f-07fb2c3d4138	71402220-5097-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	72	714022205097
26417c29-a56b-493c-8a73-dced41dcd298	71402220-5098-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	49	714022205098
c646ba08-8e3c-4589-9f84-811f8485e1a2	71402220-5098-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	13	714022205098
e4c71269-e578-4cf8-8a89-39f7b8960923	71402220-5098-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	25	714022205098
aa02cbc5-8898-459a-80d9-8564f8775f6a	71402220-5098-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	32	714022205098
a03623bb-a292-46d8-9af4-c870c37276aa	71402220-5098-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	10	714022205098
75521aaa-d218-4c2c-ae5a-8c32ef2118ee	71402220-5098-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	21	714022205098
bbb1db40-8bc2-4791-aa99-b7c1e77678c7	71402220-5098-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	44	714022205098
ae08cebf-55e0-4e59-a8b2-8f0e18fbad0a	71402220-5098-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	47	714022205098
206ee187-4444-4073-aa2e-0156d6882272	71402220-5098-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	48	714022205098
883d0492-ad15-45fa-84e6-41ad74cbf2af	71402220-5098-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	42	714022205098
9687a51e-9f63-4a0c-b2c1-49e758f2d593	71402220-5098-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	44	714022205098
97aeb27c-3c2e-426a-8a1d-4208c7a9bd94	71402220-5098-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	21	714022205098
3fa1e93a-a78f-4e39-be1b-c44c67be44f3	71402220-5098-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	30	714022205098
691510f3-c4fc-4d64-9e70-e92cd69644fb	71402220-5098-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	19	714022205098
9b109e48-3203-4a6a-ba17-dc9f2b1d758c	71402220-5098-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	50	714022205098
be366006-7546-41f6-9508-abc18e2138b3	71402220-5098-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	12	714022205098
74efe973-8f3c-4c3a-9349-4a4f8531fcef	71402220-5098-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	12	714022205098
bcd49a99-3dc2-443c-9706-8fd890787c93	71402220-5098-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	24	714022205098
15621867-c86a-4035-bcf7-788f54d375cf	71402220-5098-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	51	714022205098
e6b7aa55-7e3f-427d-92ff-23958e3b59ef	71402220-5098-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	64	714022205098
732e10ee-ecb7-44ac-acbb-9c51d2905839	71402220-5098-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	34	714022205098
8d2a983e-150c-447f-b5b9-ef7a5fdc0075	71402220-5098-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	49	714022205098
b1a2ab4a-a080-4f36-af20-900d2b0840ff	71402220-5098-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	60	714022205098
bf14f7ae-a670-4876-b64c-5fa58b34dd6d	71402220-5098-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	56	714022205098
4fb3fd0d-161e-4360-b049-6e1e6b6e51fd	71402220-5099-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	40	714022205099
81a337cb-0731-4c3e-9b29-1d0e832fc99c	71402220-5099-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	39	714022205099
483fc972-55db-4458-bce9-b0ae664b4d95	71402220-5099-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	26	714022205099
32999480-5095-4603-b1d4-bcf9884ae2e8	71402220-5099-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	47	714022205099
e309ba2e-8426-45f7-8f67-b5261ae09465	71402220-5099-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	22	714022205099
5930ff32-4c61-4095-b891-55b6e2f47192	71402220-5099-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	49	714022205099
b3acd1cf-9fcb-4e46-b547-ac1389018c84	71402220-5099-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	36	714022205099
a30f3917-294b-4eee-9f9f-3274c43953a3	71402220-5099-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	35	714022205099
041778cb-8fc8-4fb7-a483-845776abe61b	71402220-5099-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	33	714022205099
f3534a34-8766-4c7e-bcb4-fe0676753569	71402220-5099-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	30	714022205099
516732c8-d8bc-436b-9981-90ba4d48c432	71402220-5099-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	46	714022205099
959633b6-4664-49e7-a502-d5136ca793af	71402220-5099-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	38	714022205099
80d6739d-f4c3-42ff-adca-65b8f60c6e78	71402220-5099-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	44	714022205099
659f899e-91c0-4690-9f69-a0a7fc84363e	71402220-5099-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	29	714022205099
b09db271-4edc-42d5-b08d-b24575df6c0c	71402220-5099-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	34	714022205099
314b7db7-f8a2-4e26-b81b-7aac42913322	71402220-5099-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	40	714022205099
2eb80780-b23d-4961-8c8a-0da7404b3232	71402220-5099-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	16	714022205099
1b0d9e58-73e6-4fab-a01e-23d8ba5b9b00	71402220-5099-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	15	714022205099
174138e6-f6e9-402d-93df-99f89b2723e4	71402220-5099-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	35	714022205099
b6f46d7b-3288-4231-98da-8b50ec2e868f	71402220-5099-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	92	714022205099
c54f8b52-dfb9-4cbc-9fda-8c420aba4f59	71402220-5099-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	14	714022205099
030f17e1-7c73-41ce-8fcf-dce7034a3f6d	71402220-5099-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	53	714022205099
9025fa5d-4d18-4290-b21a-c022945bec2b	71402220-5099-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	66	714022205099
36c1f066-e13e-42e5-a634-75200c57830c	71402220-5099-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	10	714022205099
b26470cb-3809-4e99-b8e2-d7edc3855ee6	71402220-5100-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205100
ece43323-b514-4c45-9fa7-a014aac12f95	71402220-5100-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	17	714022205100
50514f9a-5e54-4442-97b9-86932b6d2665	71402220-5100-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	41	714022205100
01a8b6eb-7d2c-4c50-bc85-6e6883034f03	71402220-5100-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	12	714022205100
26178db3-2315-4217-aae9-7da91bade5a7	71402220-5100-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	45	714022205100
c87fdcb0-0e9e-42af-8257-b350a3ddc319	71402220-5100-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	20	714022205100
ba5a808d-03b8-4a68-bfc8-eae9f9a55bac	71402220-5100-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	32	714022205100
69bae104-4ecd-41cf-90ac-d754dfc30c21	71402220-5100-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	33	714022205100
6ab975b1-c8e7-46d0-a4db-c967309e557f	71402220-5100-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	41	714022205100
2bb6af46-bb8e-4748-9c67-ced96eb73842	71402220-5100-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	18	714022205100
0f833cac-42d0-496c-b4f5-eb3d8624454e	71402220-5100-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	42	714022205100
11ccfe86-3d74-4a6d-a9e3-f57b88a7f1ed	71402220-5100-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	11	714022205100
ff266f8f-9856-4cbb-b668-471996955832	71402220-5100-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	30	714022205100
303beeed-d5eb-4ad8-8d1d-2e0a740033b8	71402220-5100-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	18	714022205100
e46afc54-6b66-4cb9-9b32-73a661472c9c	71402220-5100-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	16	714022205100
f012aafe-5f16-4ef1-a65c-b57c526b1070	71402220-5100-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	14	714022205100
0df97a27-27cb-4b74-9b0d-e2efb3ea8e38	71402220-5100-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	33	714022205100
56a3d615-83e5-461d-881e-74651d4cc661	71402220-5100-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	43	714022205100
9ec58932-3c04-4521-a16d-610395e8d54c	71402220-5100-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	26	714022205100
b4fcd101-816d-4136-a88f-7b22b5be1e77	71402220-5100-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	74	714022205100
0b4133eb-1e57-4aa5-993f-a22adb158d09	71402220-5100-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	70	714022205100
1bd4f507-ae68-4465-a4cc-2730bdc8ad33	71402220-5100-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	54	714022205100
b1d7dd11-50e1-401e-9949-cf233efd3760	71402220-5100-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	90	714022205100
b5f7b4af-8dc2-4415-8818-4ec70b88c797	71402220-5100-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	64	714022205100
bff05a2d-852b-400c-b03e-9be4b93c2427	71402220-5101-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	26	714022205101
ea6c405d-1eda-42a4-aa7f-3402fd9938db	71402220-5101-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	17	714022205101
dcb8acd8-adb4-47b6-a5a9-9dbcc18a340b	71402220-5101-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	37	714022205101
80df1670-c936-4740-9f75-7ccc5b3f958c	71402220-5101-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	27	714022205101
235b563b-5d76-4d1f-9180-402e6fd845a1	71402220-5101-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	18	714022205101
e14ac6fe-3bb2-4fa0-b905-b01accb05f4b	71402220-5101-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	49	714022205101
8d7d4d1c-4240-4a1e-87f2-9e2f58ae2ab6	71402220-5101-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	47	714022205101
9962639d-534d-43a4-8747-76fdac71188b	71402220-5101-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	21	714022205101
a10ebcf3-cf78-4f9b-a473-bf5e1e69912c	71402220-5101-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	48	714022205101
2ecf43d8-b1ae-4465-96f2-2d5807aa94c1	71402220-5101-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	47	714022205101
f19669c2-1b5e-4bc6-9842-61bfde93b7eb	71402220-5101-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	34	714022205101
1696c49e-7149-4f63-81d3-5858dad07b63	71402220-5101-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	39	714022205101
13e837a7-abe0-41f0-9604-b8d12120e6de	71402220-5101-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	40	714022205101
e2272c4e-3ec5-4929-905a-a1ebd8b5bb50	71402220-5101-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	29	714022205101
e6645f98-01ed-4c1c-9443-ff608d01e0d4	71402220-5101-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	16	714022205101
358a580b-04e0-4138-a71c-e48df6ec55a2	71402220-5101-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	37	714022205101
f7ca6916-9373-4d21-9eb3-9154ef7efc83	71402220-5101-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	16	714022205101
b34b3063-fa8c-49f5-9df5-d63795e7fb64	71402220-5101-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	14	714022205101
fb27d97f-e309-4c21-a425-cb4052707f0c	71402220-5101-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	53	714022205101
9ff816de-6069-4168-8686-b86f5ab704a2	71402220-5101-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	89	714022205101
8e1febc8-08b2-415f-952a-5d49afa850bf	71402220-5101-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	78	714022205101
945607a7-ddc1-4edb-9d21-556fe9b8ffc2	71402220-5101-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	22	714022205101
a2c9e969-594d-4753-a76d-922a0e724299	71402220-5101-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	61	714022205101
ef4b8a38-59c0-4570-ab73-0924ed707e62	71402220-5101-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	70	714022205101
17531d67-2a8b-47a9-9cbd-36b082fe58cb	71402220-5089-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205089
1c8ed0df-d85f-4320-8bb0-523fa2131565	71402220-5089-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	19	714022205089
8986a2c6-81c0-4731-9b22-a03ab5e4a0a1	71402220-5089-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	24	714022205089
38167059-1ddd-435c-89ef-918d3a6b6e42	71402220-5089-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	40	714022205089
2be54b8d-7675-44c8-b0de-704f292c2cd4	71402220-5089-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	26	714022205089
bc803972-8b10-47f6-ae4e-e58bc282b155	71402220-5089-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	44	714022205089
a80e36f2-10b2-4348-affb-50a0980c1ee2	71402220-5089-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	17	714022205089
db9d8695-cc1c-4676-9964-4317a59fd038	71402220-5089-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	14	714022205089
2f2b6eab-999c-4dc2-87f7-a3b6b63e913d	71402220-5089-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	11	714022205089
d391f02a-ae2c-4f28-9274-9beb72d50941	71402220-5089-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	24	714022205089
a69735ff-5044-46fd-ab43-779bfa2eee6f	71402220-5089-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	39	714022205089
10cf3568-5f13-49d7-810f-b13c4a1c80a1	71402220-5089-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	19	714022205089
ca06a3d5-c26b-4673-8991-73ba816abcd0	71402220-5089-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	16	714022205089
7e65efb5-68a5-41a3-b146-2159a485e39c	71402220-5089-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	23	714022205089
2e3d7a8e-67eb-419c-b086-7edd26301d86	71402220-5089-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	39	714022205089
110d164f-f945-469e-b91f-9eb873ece5db	71402220-5089-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	12	714022205089
a9a9e91d-0805-4bc9-94e3-c0d3cd5e073e	71402220-5089-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	17	714022205089
aae44a3f-5193-4a9b-8697-d0358ab837c9	71402220-5089-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	45	714022205089
633bf8a9-1149-4e28-9833-b9c9dff6dafe	71402220-5089-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	55	714022205089
d07e9b7b-99ae-4bf4-9979-5fafa4ff533a	71402220-5089-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	65	714022205089
b10276c6-4f61-4b2a-9016-ca484f7bee74	71402220-5089-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	69	714022205089
fb9abb87-3b75-46b8-99fd-616febc07b5b	71402220-5089-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	57	714022205089
2cc34d19-20c3-4b28-bd8a-5b32dda0db1f	71402220-5089-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	32	714022205089
efb70e2d-2a6d-4c3a-8f13-0aa2bfc7e4e5	71402220-5089-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	41	714022205089
1eb09bef-402e-4f2e-96a5-0de7c70b56e5	71402220-5090-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	42	714022205090
66b35aba-4f6b-4c1a-8c62-f50670ee4864	71402220-5090-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	28	714022205090
6c8191d9-77fa-48bd-8982-160e9086f22f	71402220-5090-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	18	714022205090
6c93432b-0d5a-4e98-9f5d-c68a945cf398	71402220-5090-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	20	714022205090
40d946a9-8775-4b77-b3f6-c2892c70e75e	71402220-5090-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	23	714022205090
f070e7f6-1e47-45b8-a48b-f69bfe1deee5	71402220-5090-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	23	714022205090
f63eb1f3-b328-491c-886f-9ea1379818e4	71402220-5090-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	36	714022205090
65586342-1fb0-4bf8-82f2-f1f4ff92e4b0	71402220-5090-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	39	714022205090
4f795047-e03b-4ac4-92f2-9cb924ae4e98	71402220-5090-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	43	714022205090
40c13af2-1c56-4de5-afc4-a26f421e0102	71402220-5090-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	15	714022205090
c35615e4-c5b1-435c-8d66-36a4c13b2a07	71402220-5090-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	22	714022205090
bc283fbc-538a-45f7-b0b5-61e5af2971e8	71402220-5090-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	37	714022205090
f9e1ec7d-e41a-4094-a71b-1a377c71da78	71402220-5090-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	20	714022205090
d165dd42-a452-4d03-9367-6bd87f0cd12e	71402220-5090-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	25	714022205090
f1aed9e9-3e95-4564-9680-3c1e3ce66980	71402220-5090-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	43	714022205090
438f6972-edbd-422f-a0e8-daa70c6aeed4	71402220-5090-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	23	714022205090
d67ce330-d3f4-47cd-925a-1ae9fe02e4e7	71402220-5090-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	25	714022205090
f01cd1c5-16e7-4cc6-9512-6fcc6f1f8bf0	71402220-5090-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	39	714022205090
ad9cf6c9-c614-406b-87a7-7abaa4aa3ba0	71402220-5090-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	35	714022205090
5333e5d9-9b95-4e62-854a-a4fdb02fdd17	71402220-5090-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	19	714022205090
dfa2eb58-5d64-43f3-80f8-a14d0f2075b9	71402220-5090-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	72	714022205090
a3be2461-270f-43d5-ae84-885679a59c25	71402220-5090-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	33	714022205090
eea5caf7-a641-4671-823b-7e36824875f7	71402220-5090-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	59	714022205090
af447af2-542b-4574-affd-936e326dd3a5	71402220-5090-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	72	714022205090
2b8a7609-76bf-4565-9b31-dc1ac8b162c5	71402220-5091-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	23	714022205091
f07060bb-df63-488f-a394-bc779d2b9099	71402220-5091-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	33	714022205091
e1ef859a-cd91-4eb6-80b0-de86d77eaec7	71402220-5091-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	18	714022205091
02c4c298-5a29-45b7-9560-79daeba9d604	71402220-5091-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	28	714022205091
86956697-c6c8-46b0-b962-d5865120c376	71402220-5091-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	24	714022205091
3c48fbb5-bc94-4ffa-aaae-0ffdb1ffe97c	71402220-5091-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	32	714022205091
58e66aec-8460-40e6-a677-683ae21dbc7f	71402220-5091-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	21	714022205091
68e23c63-9259-4239-b1b4-30d8fd9f77b9	71402220-5091-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	34	714022205091
9207f48b-ce99-4096-8afd-6fc74bb82aff	71402220-5091-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	23	714022205091
7ec8e300-f091-41d8-a501-e7ec3d9f3ce7	71402220-5091-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	15	714022205091
8da62244-b19c-47b4-87df-1ff71877908d	71402220-5091-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	47	714022205091
098961f8-168b-4110-80e6-1dbeb1e6bef7	71402220-5091-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	35	714022205091
3391ee11-0c98-47e8-a32a-53e9dcd7750f	71402220-5091-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	33	714022205091
76303480-73a7-4556-8ef4-553539c03aca	71402220-5091-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	25	714022205091
e49618f4-16cd-486e-afe3-664003c77388	71402220-5091-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	18	714022205091
d2ac2607-8523-4d07-ac21-a30e689ae929	71402220-5091-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	35	714022205091
1b88dd14-91e0-409d-ae94-11cb71e885f7	71402220-5091-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	15	714022205091
621cea40-268a-45b0-9bad-87c01db01f4c	71402220-5091-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	28	714022205091
c9b8dd6e-ffe2-47ec-ae39-6154efc7091b	71402220-5091-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	51	714022205091
a42c7783-8c70-45a8-b518-faccded78b74	71402220-5091-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	43	714022205091
5bfbeb00-b72d-4a64-aef4-ca74a428c118	71402220-5091-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	45	714022205091
0f152081-6786-4f25-b703-46de0f546ee8	71402220-5091-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	51	714022205091
e6f6bd1a-e93b-4125-ac0c-89fa58a0243b	71402220-5091-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	44	714022205091
ef5cfd09-bd3a-41e3-a105-d7515d8efc09	71402220-5091-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	93	714022205091
9889417b-98c4-49f5-a79a-5cc6c1107846	71402220-5092-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	45	714022205092
17c6f538-f06c-413d-a7c0-0ccc9c2121f5	71402220-5092-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	14	714022205092
9aa25041-c150-4067-8632-a2bda26e54a5	71402220-5092-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	46	714022205092
6149b83f-6c4a-4593-aafb-6d99708fdddb	71402220-5092-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	31	714022205092
2d367b6e-cda8-4aa5-88d4-ad29848f3c66	71402220-5092-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	31	714022205092
0b2cc6c9-3a82-49fc-b89c-a0ae09337e34	71402220-5092-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	43	714022205092
fa9eb915-b523-4dc4-8fe8-babcaf70227a	71402220-5092-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	50	714022205092
dec2b750-f815-41a3-839f-2f285e609bce	71402220-5092-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	24	714022205092
efe8e585-3664-43bd-b135-e1edcd3ec07e	71402220-5092-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	33	714022205092
af713195-d9a2-460d-9ceb-4185c1e50461	71402220-5092-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	21	714022205092
5a83208a-7a51-4085-a9e7-cefde7d8aabc	71402220-5092-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	15	714022205092
08f60420-0cba-4a7d-ac06-8bae7303539e	71402220-5092-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	20	714022205092
5959768f-de26-40fc-9710-71fe11eedb99	71402220-5092-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	26	714022205092
b67674bb-d6b1-4212-a5c4-3124a3788b17	71402220-5092-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	46	714022205092
64ae3979-b933-489e-ae6d-7c6ace1f18a9	71402220-5092-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	28	714022205092
1281b328-8a27-47cf-b542-91116091bd12	71402220-5092-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	29	714022205092
4f2d0272-539b-4929-a240-16d41892c446	71402220-5092-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	33	714022205092
f0917dca-e360-44e0-b80d-81079ea7b97f	71402220-5092-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	40	714022205092
aea7f1b7-c4a1-4d61-b659-f6dd6ddc1cf7	71402220-5092-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	56	714022205092
82f4bd19-c6b4-45ba-b5ca-13328993bc7d	71402220-5092-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	47	714022205092
95b28e06-d605-4f36-a873-00329b198374	71402220-5092-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	63	714022205092
85c0ba73-84dd-47d4-8290-3236ffe3fb93	71402220-5092-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	15	714022205092
519b6e22-55dd-4472-9db7-581e10fba23b	71402220-5092-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	72	714022205092
24db6420-6217-4aab-ad0c-4b4a85c56cd6	71402220-5092-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	24	714022205092
eb1d1e2c-df7d-4356-a965-12b066245273	71402220-5093-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	32	714022205093
1e9d69af-5fd0-4b1f-b828-d760f701be32	71402220-5093-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	50	714022205093
41c6bc95-efd3-44ac-8542-09f24351d14b	71402220-5093-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	44	714022205093
b6792186-b82b-48a9-9a49-8ee89a478e7d	71402220-5093-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	15	714022205093
3c6de814-c6dd-4232-a851-8aad39d79baf	71402220-5093-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	11	714022205093
ebceaf02-7ffd-4e00-a143-e62c3f7a3971	71402220-5093-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	37	714022205093
6cd88df4-6233-49aa-b973-ca2256983eaa	71402220-5093-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	28	714022205093
4563602f-0a0b-4d25-be3c-9074f0786f5c	71402220-5093-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	23	714022205093
85578549-b93d-4f8c-9be2-92018ffc00cf	71402220-5093-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	46	714022205093
0314dec1-d88d-4a18-8227-03893b74bbfb	71402220-5093-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	40	714022205093
49bd6a2a-4f87-4f13-b347-399dd5c20c0c	71402220-5093-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	25	714022205093
6913f62c-806f-4ba3-9a93-795903ca1cca	71402220-5093-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	17	714022205093
acac13f0-fb14-4dea-818c-0c33cea6b3d3	71402220-5093-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	20	714022205093
2cc98435-5955-4509-b1ce-fb56f354f18b	71402220-5093-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	40	714022205093
5a0486c0-7bac-4e86-8c29-d89ff203827e	71402220-5093-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	47	714022205093
5b2314d6-f518-4fc4-8fea-0d579053d6a6	71402220-5093-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	14	714022205093
17490510-3745-4700-81a1-a7398a65d1cf	71402220-5093-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	50	714022205093
943f2528-d01a-441f-b71d-c3d40d5eb202	71402220-5093-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	13	714022205093
d81b658b-f909-4941-b457-a3033a38cfd6	71402220-5093-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	17	714022205093
7e3148de-aaf0-4eee-a0d3-bdc4aa48bbab	71402220-5093-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	19	714022205093
1c2d3be5-1cbc-435f-859b-57a1adfcb3bb	71402220-5093-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	33	714022205093
6bc8522f-3b52-41b9-9617-277aa3251c65	71402220-5093-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	30	714022205093
637d4226-ccf8-453b-a9e8-0c8a77bd4374	71402220-5093-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	37	714022205093
b31971e0-e70d-4111-8902-bc79ccdff6be	71402220-5093-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	21	714022205093
fba4247b-c5e9-43ee-888e-92f328b59335	71402220-5094-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	24	714022205094
61f370e4-f508-47bf-872b-8bc1064738fc	71402220-5094-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	50	714022205094
61d9e31a-1463-4cf0-9d76-baf68436aa4a	71402220-5094-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	10	714022205094
f624e0de-5a59-44d3-9095-6557a40ae3c4	71402220-5094-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	23	714022205094
8aeb60fc-b96f-40ed-b59c-86e8d05b7b71	71402220-5094-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	37	714022205094
f9eb79e7-822f-4693-9545-3dbcdda517e0	71402220-5094-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	20	714022205094
0accc9ce-e7a5-426a-ba68-bfd6e72fbed4	71402220-5094-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	23	714022205094
de2d0043-6fec-431b-860c-08500235abe7	71402220-5094-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	31	714022205094
53f381e7-40cb-488d-83a9-366e55b00d05	71402220-5094-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	27	714022205094
8d208a70-9a7b-4bb0-bc50-413121e0de0b	71402220-5094-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	13	714022205094
e62e5ff7-f5f6-4e51-90c1-0af9fb919c53	71402220-5094-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	19	714022205094
023406c5-0056-41d9-8e2f-74072dc34005	71402220-5094-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	37	714022205094
5d5552f2-cc9d-4d6b-93b8-f6f40ee73005	71402220-5094-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	37	714022205094
25d987c0-3c8f-4a2d-b52c-48d60097c101	71402220-5094-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	26	714022205094
78cd3c35-9603-4650-b6d6-8aa1064148e8	71402220-5094-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	22	714022205094
457288cd-c534-41e0-8ae0-f20b60c3c347	71402220-5094-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	37	714022205094
f7b5c60f-5fa5-452b-b697-b89b97a29030	71402220-5094-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	29	714022205094
696edf54-0e3b-4388-a4a9-a90217885533	71402220-5094-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	40	714022205094
186e0438-130e-4f9a-85a7-342967cae7c3	71402220-5094-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	90	714022205094
7bf1a75e-4529-4641-be0f-01d24f193d73	71402220-5094-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	16	714022205094
80b9265d-4657-4853-a657-03c879dd861a	71402220-5094-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	69	714022205094
70ccb7fa-845c-40f5-a34d-79f8d82c5245	71402220-5094-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	66	714022205094
851b5474-1d2e-49d3-9a5c-a35e3fbf4478	71402220-5094-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	87	714022205094
7cc23cf7-d70d-4caa-921d-cc871e44afde	71402220-5094-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	32	714022205094
7fd0be67-1928-4c07-8243-61a8d4698a3b	71402220-5095-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	21	714022205095
32372c14-774c-4abc-8b6a-0b70e0798d57	71402220-5095-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	19	714022205095
635dc688-bea7-4ec4-8bcd-1eb3cecddee4	71402220-5095-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	23	714022205095
0e66f2ae-28e7-469a-8621-cbbcd345517c	71402220-5095-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	42	714022205095
29666b39-c781-4ce0-9702-f5fa86693dbf	71402220-5095-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	23	714022205095
d81e86dc-5c77-4612-b028-c6274c2f4cc5	71402220-5095-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	17	714022205095
0305c57e-b37f-40a1-9938-ddae34e5a921	71402220-5095-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	40	714022205095
53321c81-f1c9-4a37-9e93-e3856db0924d	71402220-5095-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	43	714022205095
935c4439-a40e-4720-b573-23d61fa621c0	71402220-5095-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	26	714022205095
722971ea-41c0-4e2a-abbd-c29abfe811ea	71402220-5095-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	36	714022205095
95881e83-4812-4081-8509-159f8b83f091	71402220-5095-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	33	714022205095
38c830a6-58ca-41e4-aa94-9db3a878a4bf	71402220-5095-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	26	714022205095
dff8a974-ae83-410d-bad9-0c7cb377231c	71402220-5095-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	30	714022205095
8369d3fb-4f72-4eaf-820d-891d7603eaaf	71402220-5095-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	36	714022205095
9f41bb25-c5d2-4703-89e3-ec1e6713a47b	71402220-5095-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	34	714022205095
5509cda3-9310-40d1-90d4-389aa9bff15e	71402220-5095-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	45	714022205095
0a4d748c-881d-4745-843a-cc3c9f6cbf0a	71402220-5095-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	17	714022205095
86d32f58-8478-4020-8737-109cfa14cd73	71402220-5095-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	15	714022205095
030ad6cb-a8e5-4c49-b0c3-718a7998be26	71402220-5095-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	48	714022205095
599d0d71-cee0-4506-af22-fbee0cd541ac	71402220-5095-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	49	714022205095
237cd14d-d322-414a-91a2-e24423837d51	71402220-5095-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	86	714022205095
59f98abb-af4e-414a-bfa4-a3f984035b9b	71402220-5095-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	56	714022205095
db44618a-465d-4472-a586-f31937fa838c	71402220-5095-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	23	714022205095
96efdec0-fce9-4396-9923-0d8f8ceaec64	71402220-5095-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	42	714022205095
891bc88d-a0a1-428e-9ce3-084fb38c305a	71402220-5096-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	24	714022205096
2cb9904e-c066-40e1-ac95-bac3cfd52566	71402220-5096-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	49	714022205096
00e04e71-bc54-49ed-8c5f-85da4c3a6d84	71402220-5096-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	46	714022205096
0f9dcf86-f80e-403f-b787-b641bb954113	71402220-5096-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	37	714022205096
eec449e5-e9a3-4ad3-890a-2cf4ebd23e3c	71402220-5096-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	34	714022205096
34f6c0a6-6dc4-4eaf-9ba7-207deadc097d	71402220-5096-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	29	714022205096
86fe7aab-1106-4a52-946a-9b1fa483e670	71402220-5096-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	50	714022205096
5ac33476-72fe-482d-9343-7e451aea299d	71402220-5096-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	41	714022205096
2a245dc5-34f4-47c2-992f-6182c260cb36	71402220-5096-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	10	714022205096
6704de50-ec11-4b64-b161-17e80459572e	71402220-5096-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	38	714022205096
23c8b385-702f-4454-bc78-e0057eca8270	71402220-5096-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	32	714022205096
b6fa4fdd-7e27-49f7-9005-2d672d9e937a	71402220-5096-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	24	714022205096
5311534f-12b5-49d1-8699-ca85d8638165	71402220-5096-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	11	714022205096
9503cec4-21ec-4ab7-bf4e-7c2a4241d0b5	71402220-5096-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	50	714022205096
8872e549-8087-4d65-bfa1-6168b06f9a53	71402220-5096-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	45	714022205096
86377084-d422-450f-873e-9df45ce3c215	71402220-5096-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	29	714022205096
db79b286-6522-4df3-901c-e6045acb23ec	71402220-5096-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	19	714022205096
6a208b01-dda9-4245-9268-75ac8ec6da56	71402220-5096-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	20	714022205096
ed745e74-a59f-4b7f-94b8-bd5f4a5a804d	71402220-5096-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	98	714022205096
dd7668e7-2247-4a09-ae89-a26b8bead618	71402220-5096-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	52	714022205096
3a867e75-99f7-4379-8a73-e6cafe3f3fab	71402220-5096-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	52	714022205096
0f090086-6729-4b80-b0d6-b02abf75905a	71402220-5096-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	84	714022205096
dfac7701-4b77-4050-9b85-db2efed6976a	71402220-5096-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	100	714022205096
d8f93e14-69a0-4501-b581-f7552bb3b791	71402220-5096-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	55	714022205096
8f1bfb8b-8b6a-4309-9ad9-4cf36fe2cbf9	71402220-5102-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	49	714022205102
c9ac32fd-55ba-4f97-ae8d-c3b209edb45e	71402220-5102-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	36	714022205102
9a568d14-4289-4bbf-b91c-767c9ac8a04c	71402220-5102-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	49	714022205102
f94069e6-60c3-4525-a316-ea8c9b9e58a1	71402220-5102-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	48	714022205102
12bd84b0-0899-4e7d-81b1-01af43cbcc19	71402220-5102-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	45	714022205102
6df1b880-6756-4457-b179-962ef4b99b83	71402220-5102-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	26	714022205102
ba9e3bb5-11da-4d9b-af44-1c299d70df98	71402220-5102-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	30	714022205102
aa745398-e995-4766-a1da-ed920945b9e2	71402220-5102-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	43	714022205102
14b75c25-1dba-4d3c-b598-0a5f227911f3	71402220-5102-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	35	714022205102
f43522c2-15bc-40cc-b0f7-e1d1876f872f	71402220-5102-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	29	714022205102
5257fe99-eaec-4b26-92d4-2f707dc42eb8	71402220-5102-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	50	714022205102
4576d771-a5c1-4721-806e-b5c4ccd3a3e5	71402220-5102-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	41	714022205102
31a20962-c8c4-4669-a007-e6b7f6570918	71402220-5102-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	13	714022205102
fddbc739-4ce3-4f8c-b72e-c5687d505ae6	71402220-5102-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	42	714022205102
d28d603d-9505-4098-ad1e-4ed4b6ff407f	71402220-5102-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	31	714022205102
08808085-90d9-43e6-b5cc-f8fb1db044ea	71402220-5102-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	20	714022205102
967c5b60-fa95-43bf-910e-1b151bcf4175	71402220-5102-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	20	714022205102
e6e62d33-e1d0-4c49-8422-4dc93a97f1ee	71402220-5102-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	46	714022205102
c4d59e70-1e60-4e1f-9ec5-f9357dfc475b	71402220-5102-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	15	714022205102
e6acccce-772e-45f9-a141-c3fb72b363b9	71402220-5102-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	10	714022205102
bfae04eb-97a1-4f6a-aff6-d167a1762adf	71402220-5102-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	64	714022205102
cad8f48b-74af-4a62-8b39-70a7565a1eff	71402220-5102-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	30	714022205102
249f334a-7ecb-4d48-9128-049adc7cdbb1	71402220-5102-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	60	714022205102
8fb5c3fe-5ec6-435e-9e4b-b390689d5385	71402220-5102-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	77	714022205102
25b166c4-a3b2-4bd0-8de0-29ffb1f93fd6	71402220-5103-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	13	714022205103
119d713c-fc1e-46bc-8cd7-da1164aa183a	71402220-5103-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	26	714022205103
83e5863a-9604-4831-b128-fd500937b8cd	71402220-5103-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	46	714022205103
f4478a85-701b-473e-a3ce-61f5cb891827	71402220-5103-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	30	714022205103
dad257c3-20ba-49e9-9106-b6bd34c69d7f	71402220-5103-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	11	714022205103
23b3084d-6a6a-4099-a49f-495a325b0529	71402220-5103-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	32	714022205103
43d5996f-b4da-4428-a901-7f99e5f48614	71402220-5103-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	46	714022205103
3e5fe155-c7e1-43ef-b92c-95a3e393b0f7	71402220-5103-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	22	714022205103
46e26951-4ba8-48ed-8021-0f28ba244039	71402220-5103-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	27	714022205103
08774efd-d51c-4f99-96d7-5a2ab56ae811	71402220-5103-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	10	714022205103
c20ce600-4da4-4e13-bfb0-527177851d4f	71402220-5103-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	10	714022205103
d2399387-3799-4c43-af74-ae253266db6d	71402220-5103-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	22	714022205103
542f9440-50b6-41d2-b0d7-6b726a8f8218	71402220-5103-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	45	714022205103
1746c1e8-bcca-41af-afd8-61ef43194e8a	71402220-5103-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	42	714022205103
de85c730-7492-44fd-a843-e5cda49e94d1	71402220-5103-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	31	714022205103
153837b3-0deb-4f0a-b527-c9aa047cf4be	71402220-5103-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	37	714022205103
b3f351ad-cb5a-423c-8b68-64de3ecc343c	71402220-5103-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	39	714022205103
fbc1d4a3-ec77-4078-b6eb-73b9da41a403	71402220-5103-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	23	714022205103
ad7c5599-9e5f-4c74-b1d6-f69046590e39	71402220-5103-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	61	714022205103
8c9d8baf-32b1-44f4-888a-42d1f6f33863	71402220-5103-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	53	714022205103
c7429ee0-0ccc-4679-8f38-c90752963da4	71402220-5103-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	61	714022205103
76c17f6c-b4f7-4e39-9d54-4b722edfda7f	71402220-5103-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	70	714022205103
7558571a-04ca-4695-b7f2-638d41247f27	71402220-5103-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	32	714022205103
ca8f5c3e-e548-4822-ad8f-5d3fa8e739c1	71402220-5103-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	14	714022205103
2bbb1d3a-be15-438b-9bc1-33594914f790	71402220-5105-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	30	714022205105
493f63f0-2525-4e3f-99be-b53bd4d75139	71402220-5105-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	10	714022205105
23d2535c-4815-41db-8140-8b49e6dabc9e	71402220-5105-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	49	714022205105
d9da25fc-7202-45a1-9d0e-36e776b25834	71402220-5105-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	41	714022205105
c8511856-7279-48ed-9599-e729326d3a60	71402220-5105-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	14	714022205105
f3a4c557-67e7-46af-b0eb-c6ebe5c85cf6	71402220-5105-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	40	714022205105
3786fec3-ce23-4d68-b83b-ffb40e626027	71402220-5105-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	17	714022205105
76a66beb-5a2e-4334-9001-41e2db296c4b	71402220-5105-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	42	714022205105
47b8ca04-755e-4acb-b966-0cdabc418979	71402220-5105-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	33	714022205105
b0f236ef-a794-4beb-bee4-0b6733bad535	71402220-5105-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	39	714022205105
10691be0-de96-45e2-96db-596b1fa1287a	71402220-5105-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	45	714022205105
33c4b6ef-dd1a-4df2-bf72-91ed6a442b03	71402220-5105-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	40	714022205105
7e654d88-9c34-46bb-b699-e82156210a88	71402220-5105-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	17	714022205105
bb0e6100-92c8-437e-a08e-394a397db951	71402220-5105-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	27	714022205105
6152e7d0-ad25-4e82-a6ce-88e39f1fd252	71402220-5105-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	48	714022205105
67ef3f6f-a847-4d3e-b5f1-ca338f6d7c1d	71402220-5105-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	18	714022205105
aa4b5f35-14a5-4a34-8a38-e8a728599770	71402220-5105-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	21	714022205105
aab9f522-a3de-4c56-956c-60adbde42871	71402220-5105-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	12	714022205105
5287c21e-abe0-4037-b85f-39a1192b9eb5	71402220-5105-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	61	714022205105
a58b0b5a-abe5-439c-8d38-059cbd571bf4	71402220-5105-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	95	714022205105
703bb2ab-f9bd-4b87-b5ef-f1c65f3a33af	71402220-5105-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	52	714022205105
b3ef86e4-a110-42f4-b47a-4937fc9bf526	71402220-5105-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	39	714022205105
7507f78d-e9b8-48ef-a75f-3de9f5c393d5	71402220-5105-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	32	714022205105
760b822f-7cb8-4280-9aa1-1e8b48a52ca2	71402220-5105-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	13	714022205105
30dc9765-8e38-43f1-a0fb-ce8b890a5e87	71402220-5106-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	25	714022205106
5d51fe82-404d-4316-886c-343585920668	71402220-5106-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	13	714022205106
c736dded-fa44-4788-bfd5-4b57ddf77fb3	71402220-5106-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	47	714022205106
81b82b9e-a548-445b-b2a3-7f3bbbfa2c79	71402220-5106-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	48	714022205106
754f3929-61f2-46d5-982d-49bad8b9c61c	71402220-5106-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	24	714022205106
6ca92b35-d487-4739-97b5-5b5366dcf310	71402220-5106-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	35	714022205106
cd6da764-6331-4c04-a212-975b494a6dec	71402220-5106-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	18	714022205106
37ff1576-99bf-4d53-9f5a-8c4fe2e702e6	71402220-5106-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	47	714022205106
fd7eab55-a4bd-47fa-9994-c23f04192b7e	71402220-5106-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	34	714022205106
f85647ac-045b-4bb0-af51-f245cd6b00b7	71402220-5106-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	43	714022205106
bec75fe1-c5ed-4f6f-b100-ec0863cf5550	71402220-5106-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	29	714022205106
f666cdd3-31ad-46ac-9cdd-1f4cdf72b95c	71402220-5106-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	49	714022205106
3e83ba09-19ad-4305-b50d-4118195f2972	71402220-5106-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	33	714022205106
50be8ca2-5049-402f-aaa9-2e79232abbbb	71402220-5106-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	46	714022205106
f608e266-917f-4409-9eb9-a7bf4fbb662d	71402220-5106-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	40	714022205106
7d60745e-b12b-4241-9c41-cc5faad29371	71402220-5106-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	43	714022205106
54f93bba-2de0-4e4d-84f3-80f9525704c9	71402220-5106-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	16	714022205106
761a6952-e1ea-442f-bedc-6b71e92edabb	71402220-5106-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	21	714022205106
32ab7896-0b0c-4329-a70f-c0671a5e21e2	71402220-5106-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	16	714022205106
51f8a2b0-5865-4c83-8854-428df77c4d73	71402220-5106-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	68	714022205106
935f0ae2-14df-469a-af2d-73f6082a19ab	71402220-5106-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	14	714022205106
a460dc46-f5ae-40e5-b697-a4560c754b80	71402220-5106-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	70	714022205106
f81ac7ab-74b6-4483-b48e-faf1fe8878fc	71402220-5106-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	59	714022205106
fac59198-0392-4e0e-ba09-75abf35ed8fd	71402220-5106-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	79	714022205106
f7d5546b-a971-4fbf-8b99-a843c72fb30d	71402220-5107-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205107
f17003e3-ef24-4888-8a66-e49acc52cf7d	71402220-5107-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	44	714022205107
84978819-d97b-4eb5-a08f-eb6e61267efb	71402220-5107-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	25	714022205107
bc45d81b-0d1f-41d1-8b7c-20ae49c9defc	71402220-5107-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	26	714022205107
eba39ed8-72cc-4f67-b44a-497c7fa4f567	71402220-5107-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	47	714022205107
4704898a-6bf6-4098-8bf4-b9b201a14ef7	71402220-5107-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	24	714022205107
8bd1d99d-50d8-4776-9e96-967a61558364	71402220-5107-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	15	714022205107
679fc5e4-b263-40ac-a651-fc49a0754d5e	71402220-5107-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	36	714022205107
00e348dd-6fc7-4014-99f0-21027b36a9be	71402220-5107-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	47	714022205107
a6bce907-aaea-412c-8e7a-69b1569a1a4d	71402220-5107-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	45	714022205107
094c2ab1-0e3c-4912-9886-7523c74af45a	71402220-5107-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	45	714022205107
5902f90c-69e5-4f53-b0ab-c661d118c4a7	71402220-5107-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	42	714022205107
7bd130cc-7dee-47aa-89d4-7b49150af1d5	71402220-5107-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	29	714022205107
725d8b6f-d1d8-4c4c-bb6e-8cd030f5db02	71402220-5107-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	32	714022205107
9b135c2c-a0b3-40e7-aa17-cdcdf6a60261	71402220-5107-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	12	714022205107
823a78fb-e8d2-4846-bbee-0fe6897c6a7b	71402220-5107-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	13	714022205107
2a478518-1dfb-4f04-a73d-2b7e0915960b	71402220-5107-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	29	714022205107
279946a5-3048-4f08-9d5f-f600acc408d8	71402220-5107-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	38	714022205107
aaccb081-3562-4d7a-81fd-af1cd73035db	71402220-5107-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	62	714022205107
88d6ea40-3c82-4f58-9e5c-fa69ee3b8170	71402220-5107-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	31	714022205107
16b885f3-1132-48c6-bde3-c1fc4d4ddd8f	71402220-5107-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	36	714022205107
eec8d951-5517-4310-8e90-b95978af3d3f	71402220-5107-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	36	714022205107
a6015494-a276-4bd8-a305-5c244c04d0d2	71402220-5107-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	85	714022205107
eb0490b3-c1bc-4801-8426-0469d5de5830	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	fc8f926c-472b-424e-af90-a80083f9f4a2	79	\N
4275c172-83c6-4cca-986a-a3aabfc6b21b	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	7785681a-99aa-460a-ba55-0618b3d1240a	71	\N
162bbc84-8e1b-4765-a565-ecd7ef1df23b	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	83	\N
9c06ef51-8da7-4117-88ef-f1d52d14c173	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	17	\N
4acd2460-8164-415e-b18c-c13f723095cc	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	65	\N
747a9614-2671-4608-a62b-f45745145949	2b42fc81-3c0a-4c21-ad01-8bd72683ad0a	2f31f98e-49f7-4228-a40c-83d32ea2a65e	81	\N
bf7690be-a24b-41df-bf48-52eed7fd30cd	ae232278-39cc-43b4-86a0-1426c21ea957	fc8f926c-472b-424e-af90-a80083f9f4a2	58	\N
4384ad00-b9fe-47e9-ad98-ffb9f5e7f1d4	ae232278-39cc-43b4-86a0-1426c21ea957	7785681a-99aa-460a-ba55-0618b3d1240a	19	\N
d455ade7-1021-4188-bd88-78c07ee38168	ae232278-39cc-43b4-86a0-1426c21ea957	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	99	\N
e6652dd7-4c65-45a4-83cd-f4ff1a6b9314	ae232278-39cc-43b4-86a0-1426c21ea957	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	81	\N
f60ffc5e-541c-413c-9585-9ce49a37acd4	ae232278-39cc-43b4-86a0-1426c21ea957	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	85	\N
6bde10ef-63fd-4ba1-866c-b2aa948215fd	ae232278-39cc-43b4-86a0-1426c21ea957	2f31f98e-49f7-4228-a40c-83d32ea2a65e	80	\N
0a3e96a5-4916-420d-b8b4-ed65e3d8d145	d302f9ac-078a-4c19-b488-f0d2c58e8792	fc8f926c-472b-424e-af90-a80083f9f4a2	58	\N
f88d866b-e189-495d-8aba-51b7b708d551	d302f9ac-078a-4c19-b488-f0d2c58e8792	7785681a-99aa-460a-ba55-0618b3d1240a	93	\N
71ad0700-f6a7-4ca2-ba70-28c7bcadeadb	d302f9ac-078a-4c19-b488-f0d2c58e8792	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	55	\N
4b4aaaa5-3e95-41ff-9808-ddab776f20bc	d302f9ac-078a-4c19-b488-f0d2c58e8792	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	96	\N
ddec41d6-30c9-4a4b-b45a-9e81a98a4851	d302f9ac-078a-4c19-b488-f0d2c58e8792	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	80	\N
ae897de6-9ffd-45d7-8201-6e8ada3e62ab	d302f9ac-078a-4c19-b488-f0d2c58e8792	2f31f98e-49f7-4228-a40c-83d32ea2a65e	46	\N
52771497-9574-438f-9698-18008b32bbf6	6b9b02ae-9e3e-47a2-8d49-8528529905c5	fc8f926c-472b-424e-af90-a80083f9f4a2	57	\N
c3671751-d810-4570-ba11-fee5bd87ee1b	6b9b02ae-9e3e-47a2-8d49-8528529905c5	7785681a-99aa-460a-ba55-0618b3d1240a	16	\N
a409f487-b904-4441-97e3-d2c451b8812a	6b9b02ae-9e3e-47a2-8d49-8528529905c5	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	28	\N
8a43d86a-0901-4385-81d3-8593f8a9edc9	6b9b02ae-9e3e-47a2-8d49-8528529905c5	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	98	\N
5dcb6038-5ced-4f1b-9db4-8fb838881ad2	6b9b02ae-9e3e-47a2-8d49-8528529905c5	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	71	\N
af9d27f0-9904-4f3b-8d15-bfe57bf5330e	6b9b02ae-9e3e-47a2-8d49-8528529905c5	2f31f98e-49f7-4228-a40c-83d32ea2a65e	25	\N
4cd1a170-fbe0-4913-8ffe-2a4727c63f0c	a0fbb030-d436-48cb-89d2-341c2957975f	fc8f926c-472b-424e-af90-a80083f9f4a2	82	\N
e8265f48-03ec-408f-9360-ffda953e6172	a0fbb030-d436-48cb-89d2-341c2957975f	7785681a-99aa-460a-ba55-0618b3d1240a	30	\N
04b648b7-6eaa-482d-aaa1-9012b0d39faa	a0fbb030-d436-48cb-89d2-341c2957975f	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	35	\N
886f8b5b-3d97-4ab4-be4b-b0b1abed522f	a0fbb030-d436-48cb-89d2-341c2957975f	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	12	\N
54f7ec93-403d-4c2d-87da-30e66a998d6b	a0fbb030-d436-48cb-89d2-341c2957975f	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	48	\N
85ca0604-6983-4127-8f60-c78ee3325369	a0fbb030-d436-48cb-89d2-341c2957975f	2f31f98e-49f7-4228-a40c-83d32ea2a65e	34	\N
241f11c2-567a-4551-9cb2-4b0163485e92	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	fc8f926c-472b-424e-af90-a80083f9f4a2	85	\N
c278b06f-8208-4a80-b10a-491665885a6e	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	7785681a-99aa-460a-ba55-0618b3d1240a	58	\N
21bb4cf4-345f-479d-86f5-6e9b57a0a690	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	51	\N
81ed46f2-0422-49f1-8881-9524974fc8e8	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	58	\N
a2977256-586b-46bd-8b0b-1069c0dcd6ae	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	47	\N
64e510b3-7d50-4eaf-a5d1-2c939bdffc62	d41723c1-6efd-4c78-a2b1-c0348a9a1ed2	2f31f98e-49f7-4228-a40c-83d32ea2a65e	47	\N
fd494e23-729c-46e2-bc43-706895c7284e	b566d98a-186b-4e67-aaaf-c8b6d89fb612	fc8f926c-472b-424e-af90-a80083f9f4a2	35	\N
895f4f77-d94f-481f-9ef9-4224356657ec	b566d98a-186b-4e67-aaaf-c8b6d89fb612	7785681a-99aa-460a-ba55-0618b3d1240a	19	\N
ac1d0784-b817-4474-ba9d-cc0491ee50c6	b566d98a-186b-4e67-aaaf-c8b6d89fb612	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	92	\N
64d9e52a-63c6-4eec-bee0-94e20adc3b56	b566d98a-186b-4e67-aaaf-c8b6d89fb612	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	93	\N
2f6ef68c-16dd-45dc-9d87-90184dc4bd44	b566d98a-186b-4e67-aaaf-c8b6d89fb612	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	79	\N
3fa5459d-60e5-4bb3-9e9b-6e445c4ac93b	b566d98a-186b-4e67-aaaf-c8b6d89fb612	2f31f98e-49f7-4228-a40c-83d32ea2a65e	19	\N
05fc4c43-17c3-4d8d-8590-386f075a650b	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	fc8f926c-472b-424e-af90-a80083f9f4a2	72	\N
c3a05d9a-d68a-4b76-84ce-256a5a959e66	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	7785681a-99aa-460a-ba55-0618b3d1240a	40	\N
c34e66a8-95a5-436e-9271-c4ad88cf243c	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	77	\N
29d1b58d-5245-4f48-95d2-a2e488f70423	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	88	\N
d6cae73b-f0ad-419a-8df4-06bc5ef3caf8	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	83	\N
2f223a6f-4db2-4379-a93e-8439655f89d2	bd939c19-d0ad-4dcb-bd90-f25abd7fa753	2f31f98e-49f7-4228-a40c-83d32ea2a65e	66	\N
169b3b22-8f63-43b7-89c1-65614a9d70f8	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	fc8f926c-472b-424e-af90-a80083f9f4a2	96	\N
5552772b-3bb4-4cee-9085-5a4fc62276a9	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	7785681a-99aa-460a-ba55-0618b3d1240a	42	\N
0c1a7737-3d46-4a25-8c35-ca1caa848883	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	24	\N
795d42a1-988f-4033-b21e-6d7f3a276f45	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	17	\N
efbada58-434c-4e2d-ac54-8f8617d28070	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	15	\N
d8108ef8-a057-4ad3-8c16-d9af01825959	39a20171-b808-4d1e-8d19-5fa0f6ec62a4	2f31f98e-49f7-4228-a40c-83d32ea2a65e	37	\N
e0663246-d5fb-4a96-93c8-b9345daeb71f	71402220-5107-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	63	714022205107
48082d9f-f698-48fd-b495-1eb9689cfa9a	71402220-5108-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	25	714022205108
297612de-ce64-4afe-a09a-be99dbb74248	71402220-5108-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	46	714022205108
611fee0c-eaa8-4659-8f28-5f9a936c6031	71402220-5108-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	22	714022205108
14cc563e-3e62-4299-a831-ca3d059bdfbd	71402220-5108-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	15	714022205108
c5368972-641a-4eb0-83b3-56b26b44b1fa	71402220-5108-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	11	714022205108
9d49add7-6378-4894-ab72-2aa855e25c3e	71402220-5108-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	30	714022205108
20e777ab-31b9-4dc7-9dc7-0fcdd2c3267a	71402220-5108-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	27	714022205108
0ac7244b-7bbf-4971-ae4d-a3f2000a30c6	71402220-5108-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	18	714022205108
d8ac5736-41d2-414a-b351-2602d1415d11	71402220-5108-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	10	714022205108
fe559dcb-134a-46ad-a76a-575173278489	71402220-5108-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	21	714022205108
93988c42-25ae-406b-8acd-f1a7ca1feaa7	71402220-5108-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	34	714022205108
02e5783e-2bcc-48b4-9d93-a89774af5637	71402220-5108-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	26	714022205108
d78f6b29-67f5-437c-81c7-87684acba3e4	71402220-5108-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	22	714022205108
17137622-ae1f-4837-9093-071ecdf09af0	71402220-5108-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	18	714022205108
3ba6c47a-71ab-42ce-b9b1-82e6a8b4738c	71402220-5108-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	47	714022205108
26d28383-0397-47ab-b8dd-25a5911f9551	71402220-5108-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	21	714022205108
202a00fc-9b47-47f1-b318-de88c4ee4ef0	71402220-5108-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	31	714022205108
0757d437-93bf-4235-bdd6-3001d840fbf5	71402220-5108-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	36	714022205108
4b9336ab-988e-4c80-a70a-438dd0dfeabc	71402220-5108-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	23	714022205108
3ccafb1e-dff8-4680-95c4-c0f799300332	71402220-5108-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	50	714022205108
e2e17d65-a381-4e3f-941d-7a39f0ad7f09	71402220-5109-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	16	714022205109
52b4e512-2e13-4baf-9705-083b547122aa	71402220-5109-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	28	714022205109
2331952a-ba1a-4c52-a0d3-63ce7b951a7e	71402220-5109-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	32	714022205109
9f56341c-f342-44e2-a9ba-7a3e5fdd98d3	71402220-5109-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	46	714022205109
5ace7cd7-f1c8-4d84-82a5-e868e3c7ac86	71402220-5109-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	43	714022205109
5ba2a01f-01e6-49e1-ba0b-7afaa30d1270	71402220-5109-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	45	714022205109
91f988e9-ac8b-43db-9b2a-6ff50275f1b2	71402220-5109-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	17	714022205109
a4647899-b84b-4f13-9b8a-2ad37ca47aa9	71402220-5109-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	42	714022205109
185f12ce-243f-4238-a6b2-d23c18f43c1b	71402220-5109-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	31	714022205109
bd0e4ece-f5dd-4800-95fb-8bf5eff7715b	71402220-5109-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	45	714022205109
dbf60dc1-e80c-4896-bb47-4b452489c14a	71402220-5109-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	35	714022205109
de4f5fb5-d65b-4588-88bb-ab2d85245234	71402220-5109-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	44	714022205109
5bfc08f6-2035-47d1-9267-61e4ed925fe2	71402220-5109-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	18	714022205109
74cdb1c9-5d92-4615-b064-58c06cbc4cb9	71402220-5109-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	714022205109
d7efdb27-bcd7-4f09-81fa-0c0c3deaade7	71402220-5109-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	46	714022205109
393ea94d-2c62-4819-a7f7-bba1a6079a9a	71402220-5109-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	45	714022205109
0cf58891-182d-43be-9399-ff529360f876	71402220-5109-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	49	714022205109
8a3efa94-53ec-4df1-90b5-2213bc2ed0eb	71402220-5109-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	31	714022205109
39205216-de70-48fc-b629-834fcc9213ec	71402220-5109-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	97	714022205109
2f910571-0d60-4faa-aa60-2b9fb0b42eb4	71402220-5110-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	43	714022205110
f5cbb3c9-9fe5-4789-9c4e-e3359bd73cde	71402220-5110-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	35	714022205110
685e45d1-ebbc-412a-ade3-30604f7320de	71402220-5110-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	30	714022205110
3cfd1dc6-416c-410f-801c-89aeaae98272	71402220-5110-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	16	714022205110
ac63a5fe-e4a1-468c-a325-d5385bd29e3f	71402220-5110-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	37	714022205110
30ceda6f-0d77-41be-97e1-fb99af07b1f1	71402220-5110-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	41	714022205110
4dfa2bbb-ad65-4918-8c53-e8b26aca967b	71402220-5110-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	31	714022205110
07752cce-1714-44db-a15c-338fd4faf0b6	71402220-5110-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	10	714022205110
bd588809-35fd-45e3-bf79-7c894c9a2e65	71402220-5110-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	37	714022205110
a6df227c-ff0f-4e27-8280-cd59e16361ec	71402220-5110-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	30	714022205110
0faa79a5-92b5-423c-aa4f-e2f632d4bb86	71402220-5110-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	32	714022205110
b7dc1e83-ac18-4d52-87ab-9a0962e449cb	71402220-5110-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	29	714022205110
53c2d63a-aa4e-4c3b-bdac-c0edb41fc2f4	71402220-5110-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	32	714022205110
c599c4e0-9291-42d4-a0b0-77d5d67c5e92	71402220-5110-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	21	714022205110
a666fb12-17d4-4fda-b122-a574c1ce22bc	71402220-5110-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	38	714022205110
6cc1d38b-7b93-4b90-bc1a-c5597f38233d	71402220-5110-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	26	714022205110
96f09d74-d04b-495f-a943-8a3358b882fd	71402220-5110-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	43	714022205110
c7a750d3-7532-4db0-b6dd-c78956f0f5b4	71402220-5110-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	21	714022205110
655da981-a15f-4417-94f3-40a99d33a83b	71402220-5110-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	45	714022205110
c5794a1c-fea9-4090-ae10-4e3d63bf0b01	71402220-5110-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	32	714022205110
12e1497f-586b-459e-a101-66f4a7cd49ce	71402220-5110-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	11	714022205110
13e16e5f-c5d6-45be-9c2d-69edac21a3b7	71402220-5110-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	55	714022205110
4664201e-4648-4ef9-b349-0e835d35ec47	71402220-5110-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	70	714022205110
d0727fdd-8503-4b71-a85d-5dddf9d6e76f	71402220-5110-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	48	714022205110
394832e9-398e-4648-af50-b98e9eef56e1	71402220-5111-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	16	714022205111
064d88ec-081f-48b5-b327-369956d4aa2f	71402220-5111-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	12	714022205111
60cb8123-b640-4e61-a6a6-f2e36d7b7f70	71402220-5111-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	25	714022205111
abd15d67-ddde-4af8-90c9-7b5a323cb283	71402220-5111-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	32	714022205111
84c93629-5f38-4e6d-89b0-f350ca7b57aa	71402220-5111-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	15	714022205111
191103b9-715b-4a83-8b7e-396894e4801a	71402220-5111-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	18	714022205111
9fdcbcb1-29c6-4912-a4f5-3ad0df5e7c52	71402220-5111-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	18	714022205111
6abacc0f-6dd4-40dd-8ff2-0ac42d06ea9b	71402220-5111-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	47	714022205111
32f0a29f-d0c1-4e1b-bdd8-df63109932c4	71402220-5111-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	21	714022205111
d4c3ec83-c846-49e2-9157-88860714ff4b	71402220-5111-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	25	714022205111
ca12069d-4e5e-4f0d-897d-faf383cf609f	71402220-5111-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	31	714022205111
df563885-4aa0-48e7-8b9f-4343facbb5c1	71402220-5111-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	39	714022205111
76bc52a9-1adf-4c65-8d27-a5db44d533e3	71402220-5111-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	47	714022205111
2d1f37ea-75f5-4f98-8a78-22d6b0028c72	71402220-5111-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	35	714022205111
08d54fdd-ec0f-47d3-85d4-1e9abb76dd0b	71402220-5111-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	31	714022205111
3a2feb2a-fb6d-4af9-9d2c-45fc51ad1272	71402220-5111-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	27	714022205111
bb3eb5f3-7518-4ecb-9e58-aa53c02c836f	71402220-5111-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	28	714022205111
9746b8b8-817a-4060-a05e-7539bd64acb8	71402220-5111-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	39	714022205111
2fbc18f3-b7cd-47ee-8f97-7b3814e40b12	71402220-5111-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	80	714022205111
fb4c1343-cff9-4798-96cf-e8af87d2f12c	71402220-5111-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	86	714022205111
8b7e188a-0b86-41d7-9a92-8895dc8f57ae	71402220-5111-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	40	714022205111
6ce589fb-9e4e-4082-baa6-6e43b160bbdf	71402220-5111-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	10	714022205111
6aab1fbf-dac7-48b3-a43e-81daa26667f2	71402220-5111-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	77	714022205111
0db44beb-9b38-460f-873e-260c06981a4b	71402220-5111-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	38	714022205111
4ac746e9-bd8a-448b-ac7a-7cc146e2c845	71402220-5112-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	37	714022205112
a1724fd5-a8d9-4561-8f99-b074a7aa2d4f	71402220-5112-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	28	714022205112
97141aeb-5aa6-49eb-affc-5360a10258a6	71402220-5112-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	40	714022205112
a26f61fd-969c-4ddc-8158-36bcedadfe33	71402220-5112-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	31	714022205112
a5ebf91e-68bf-4551-86ea-6c0994f61932	71402220-5112-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	48	714022205112
140acb06-4e0f-4684-9c07-08713ec9d719	71402220-5112-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	20	714022205112
8881c7d6-d533-46de-a15e-5634252fd423	71402220-5112-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	25	714022205112
f718c421-bec3-4743-bb15-4624ace0d72d	71402220-5112-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	43	714022205112
db040b06-b66b-4cd9-b3c3-f8121dcc5749	71402220-5112-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	35	714022205112
c83a06f7-6262-4b3c-a6b0-8297a8aed3dd	71402220-5112-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	19	714022205112
cac5580c-edb5-4bdf-9e8b-4300caf6a1ea	71402220-5112-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	43	714022205112
92cf80a9-9a4c-4e8f-825a-ced29ed9cd54	71402220-5112-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	13	714022205112
5494b418-76ab-49d4-a2c5-46efe1b70835	71402220-5112-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	36	714022205112
ae2bc0d6-ad3a-4b89-a990-4035264412e6	71402220-5112-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	28	714022205112
cdc8975c-d0dc-40e8-90eb-8150d7bb2e9d	71402220-5112-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	20	714022205112
43da53a8-3791-4d25-8623-ec1bbe998922	71402220-5112-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	27	714022205112
c838b955-4159-49c9-944d-da6bee4b4584	71402220-5112-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	38	714022205112
b140f06c-608f-485f-81ba-69dc6889a9cc	71402220-5112-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	15	714022205112
c405fced-812e-41d1-abdf-16022151f617	71402220-5112-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	90	714022205112
537f7a5d-d845-48a6-8461-e7452e60f110	71402220-5112-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	30	714022205112
8dfc10b9-53c9-4c5d-ae33-d83bb3cd2b8a	71402220-5113-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	21	714022205113
a1601624-c7f3-4788-8ad4-c116b44934c3	71402220-5113-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	44	714022205113
49adbf0f-a0e4-4fc8-aacc-d8a1279191c3	71402220-5113-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	12	714022205113
1bce02e8-0d78-4c28-b882-9bfefc4f76f9	71402220-5113-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	13	714022205113
b73ac8c8-fe01-4da6-8c32-dca41230e193	71402220-5113-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	14	714022205113
0bdada83-0c7b-4ab5-96c0-827db814c58e	71402220-5113-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	32	714022205113
e7c78843-12c9-4241-94d0-6a8530fe47ee	71402220-5113-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	45	714022205113
f61fd1cd-bf29-4f7c-8d26-3b3cb2e8bff2	71402220-5113-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	40	714022205113
86f3e517-52bb-403d-8a9d-24f954dec24e	71402220-5113-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	42	714022205113
d319d2bd-9fc9-435b-a69d-5c40c23834b9	71402220-5113-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	47	714022205113
a5868339-6532-47ba-a76e-ee67061d542c	71402220-5113-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	50	714022205113
a39c40dc-ec31-43c6-9bb7-7ee439d837a9	71402220-5113-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	45	714022205113
09aee094-8698-4de2-a6a1-0fade9cd500e	71402220-5113-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	32	714022205113
fa6ce732-afda-44f2-9902-a7f336ea206d	71402220-5113-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	27	714022205113
32659721-7467-4a7a-a50a-aa506a4be14f	71402220-5113-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	27	714022205113
9a510979-bcfb-4bc4-b1ba-a23acf42a5e2	71402220-5113-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	40	714022205113
ee7772e1-bbe1-4fc8-a961-8661e3108290	71402220-5113-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	25	714022205113
73c7abc9-4af1-48a6-a75c-1401c889da70	71402220-5113-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	14	714022205113
368c77b5-e0ad-4274-94af-7a294c2dc10f	71402220-5113-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	73	714022205113
6ff38979-dda5-4368-9319-73952cc28dd7	71402220-5113-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	82	714022205113
8f605153-a7f7-4b1f-9042-541b1da7315e	71402220-5113-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	95	714022205113
4fd00b83-2860-49f3-9a53-13823f4d15e2	71402220-5113-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	17	714022205113
d5428385-abc8-4e13-8fb6-20c5e21e4e17	71402220-5113-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	50	714022205113
80604d7e-02d1-4d3f-a41b-c14da8384b14	71402220-5114-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	47	714022205114
2f0f89b4-9d01-4480-b1eb-cb0c9a226ab7	71402220-5114-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	36	714022205114
c03ccfaf-cc07-4f14-880f-05801e3a3700	71402220-5114-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	27	714022205114
5a3b24df-3369-4c13-90c8-e22ca8906ae2	71402220-5114-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	50	714022205114
ad3dd62d-0622-4e34-a47c-f2144db803df	71402220-5114-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	48	714022205114
32ff4ca7-419c-43d0-acde-658b52597528	71402220-5114-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	41	714022205114
d5d008f7-c8c4-47fb-b3b4-9ecfca7855d3	71402220-5114-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	28	714022205114
0761ac58-538b-494a-b5ce-3df1f50e795c	71402220-5114-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	23	714022205114
6de62012-6a5a-46b5-a2c4-7d1849fd503c	71402220-5114-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	44	714022205114
18842b45-da94-4f23-842d-ed621176f088	71402220-5114-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	33	714022205114
df762d48-fa77-4393-a031-1fa801cc0f2f	71402220-5114-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	28	714022205114
86abcccd-7b5f-44cb-871a-2097596fb070	71402220-5114-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	39	714022205114
c5f135e9-ad96-40b4-a051-e55846c616f8	71402220-5114-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	41	714022205114
598838b7-92c0-4c04-9248-32850ca1f6ea	71402220-5114-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	19	714022205114
5a0f482b-d0d7-4209-a8ac-0b35a7e83008	71402220-5114-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	22	714022205114
21dc1663-1118-4ab4-beaa-a4b356d29257	71402220-5114-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	11	714022205114
37f7c965-6879-4056-86f3-35186cca8309	71402220-5114-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	34	714022205114
1ba82200-3cc6-4e46-b512-cabbb608f4f8	71402220-5114-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	42	714022205114
5b6e75fb-cba5-4ea7-92d4-df53f1373b13	71402220-5114-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	90	714022205114
01b73313-34e2-400d-b355-753b5968a47b	71402220-5114-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	38	714022205114
129609ea-f889-40fd-9bbc-2070dff69ea7	71402220-5114-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	84	714022205114
e73a9aeb-07d1-4b2c-b785-d16d5ba1999c	71402220-5114-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	31	714022205114
e4f88b20-6b0d-46c5-8a09-60544f660fe7	71402220-5114-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	38	714022205114
dda4138c-0122-4ead-a388-e826641082ba	71402220-5114-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	77	714022205114
efd3905b-51a8-47d3-8bbf-6f071971e5d4	71402220-5115-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	21	714022205115
ecd08553-c852-47ad-834b-4f8ed8ca7a36	71402220-5115-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	22	714022205115
b4300c20-af33-4c97-ad19-1942e763632a	71402220-5115-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	32	714022205115
549b483c-9e1a-4e97-a292-eb096719058b	71402220-5115-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	35	714022205115
77de003e-ef02-4687-9770-fce3295738c9	71402220-5115-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	36	714022205115
68e4f975-1025-467e-8d69-62bc814caee3	71402220-5115-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	49	714022205115
dfe68b88-e948-4b2f-919d-b2500f351bbf	71402220-5115-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	40	714022205115
369b820e-14cd-412a-82a6-8009d276ada1	71402220-5115-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	42	714022205115
f8ceb770-3fef-4dd4-b0fa-4ee027350437	71402220-5115-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	45	714022205115
47f33a43-2a91-47bc-b1bf-0469684a73c1	71402220-5115-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	25	714022205115
109da078-4d46-467f-ab70-636446bc2f94	71402220-5115-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	27	714022205115
89578d5d-7c88-4d6f-aba0-412f1bf5923a	71402220-5115-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	35	714022205115
eedbbf40-d34f-4069-ba6f-193840893900	71402220-5115-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	40	714022205115
880f39f1-bebd-4b94-8f7a-7be8529a5f2b	71402220-5115-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	714022205115
d6e0f58c-0597-4fe1-9d00-2f358b4f337f	71402220-5125-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	18	714022205125
196ea9c9-4c0c-4e0a-a77d-f0e1b3a703a1	71402220-5125-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	42	714022205125
9d7df324-c436-4fd8-9414-2cda13cadb00	71402220-5125-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	50	714022205125
6a90f731-44a5-4bd0-9708-bda92296e4d7	71402220-5125-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	42	714022205125
37ac2ca9-0613-494d-a5b4-c1d93b73683e	71402220-5125-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	34	714022205125
6f909767-0cb9-4180-8972-3f44973143fd	71402220-5125-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	51	714022205125
229fdbd2-3227-47a8-822e-6d5aa80a79d6	71402220-5125-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	58	714022205125
42abbf29-5b49-4801-9423-c595ed9e0941	71402220-5125-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	67	714022205125
246fcce1-ad86-4bda-a0f2-1c5b83632890	71402220-5125-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	72	714022205125
2f355394-a504-4cbf-957b-05147ce2df42	71402220-5125-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	13	714022205125
89477094-09d6-45bd-8aa6-175b8cb39790	71402220-5125-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	21	714022205125
b0eea3d5-ba45-45a2-8855-f10246d06cd5	71402220-5117-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	76	714022205117
c4f8c041-0a9b-4b7c-812f-c80ccff33efa	71402220-5117-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	70	714022205117
38ceb878-6c6e-46b0-81bd-a7400a33f9d3	71402220-5117-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	42	714022205117
2944b2a6-c891-4e0f-8393-da859682d3b9	71402220-5117-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	53	714022205117
a0616e07-48b0-476d-8117-8cb307e5c3cf	71402220-5117-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	58	714022205117
8244cd9f-84cf-495f-bf6f-6e6d5ce0b38f	71402220-5117-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	68	714022205117
64ca1730-7cf9-4841-8b4d-c321d4d65cc5	71402220-5117-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	20	714022205117
4670356b-df9f-4e15-962b-ddb8cbc4442e	71402220-5117-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	40	714022205117
ac0ea22c-f52a-42c8-b1bd-b1ba2acacd86	71402220-5117-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	26	714022205117
8c705ad8-9791-4ff1-a9ed-779121d66251	71402220-5117-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	50	714022205117
a6109125-897b-4069-abaf-39f3644bb604	71402220-5117-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	16	714022205117
c59fa58e-5fb4-416e-954a-0988bf6af26a	71402220-5117-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	10	714022205117
8903ff62-29b6-4312-8430-b2ca66102f96	71402220-5117-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	14	714022205117
ffbbb2d3-038b-41ce-be7b-168386fd33e6	71402220-5117-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	32	714022205117
764b4b4e-67bb-4db1-91f8-2d6e8fd3dcb9	71402220-5117-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	20	714022205117
f9662963-eb8b-42f8-97d7-1987d6cf446a	71402220-5117-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	24	714022205117
0b1d6e38-d15b-4d6b-ad91-f4c3de7217fe	71402220-5117-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	16	714022205117
52f518aa-e7e8-4209-b323-baf62e6bd952	71402220-5117-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	48	714022205117
f05eea77-7961-452a-96c0-8a6e3887d777	71402220-5117-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	27	714022205117
8f3d4c63-e69a-48ec-a9a3-bcfd98dd3e22	71402220-5117-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	40	714022205117
5608790a-f4bf-4f4d-b315-25e66a10e22c	71402220-5117-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	11	714022205117
d8d6f854-8897-4076-896f-09dde9172519	71402220-5117-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	23	714022205117
e40090d0-ff52-4c0c-8a58-8e5372a97c5d	71402220-5117-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	28	714022205117
063461ea-94b2-4431-bcf1-a96e5514ae23	71402220-5117-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	37	714022205117
36bfb6ee-0cb3-43df-9069-7bfcf52d7a4e	71402220-5118-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	38	714022205118
24c8a7d1-6069-45c2-a0bd-85c46d0d0922	71402220-5118-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	95	714022205118
b6a91e61-efd9-4d9b-951a-c0a02fcf5a8a	71402220-5118-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	21	714022205118
b0824c98-5550-4f4c-88ae-85cd8970e09c	71402220-5118-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	56	714022205118
96b92a7c-7b03-4897-acde-2a91433db41f	71402220-5118-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	27	714022205118
b0f1a05b-81c9-432d-93a6-708042848685	71402220-5118-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	54	714022205118
2360abd8-ea87-4e75-b056-d8fe7dc9e27c	71402220-5118-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	37	714022205118
12078f1f-f9b1-499e-81af-9f2fce0f2953	71402220-5118-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	37	714022205118
b2a35ac3-daa1-4628-a8c0-f57d28256761	71402220-5118-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	33	714022205118
6cae40a7-67f4-4d0a-8398-b97459342ce0	71402220-5118-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	29	714022205118
e1845e93-cbeb-4041-b61b-0b599487c287	71402220-5118-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	19	714022205118
de8f57a7-47e7-400b-ac2c-005524c2f526	71402220-5118-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	27	714022205118
ae39f1dd-f828-46d0-918e-26e20c9e6b15	71402220-5118-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	20	714022205118
ee4c7dbd-8313-4454-aded-84068ca63f8e	71402220-5118-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	15	714022205118
0c31d672-3832-45d6-8a31-b1a0c7168202	71402220-5118-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	29	714022205118
301f0ebf-6e19-421a-9fd4-26ac2550641e	71402220-5118-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	33	714022205118
8165f673-ce98-4e94-b186-5906fd69030a	71402220-5118-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	49	714022205118
d9ec0529-9b83-45e1-bbfb-f315f0d745a3	71402220-5118-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	21	714022205118
2a6c02f7-ae14-4abb-a377-4c6a8d3f88f1	71402220-5118-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	30	714022205118
733f0875-86a2-47ad-93c3-7587fb434ec9	71402220-5118-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	17	714022205118
de153d37-fd4a-4df7-90ff-29a01934d576	71402220-5118-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	46	714022205118
b9386903-1405-45c2-ad5a-246ef0530d3c	71402220-5118-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	35	714022205118
40f13de1-147b-42ea-bf1f-855b3bb223be	71402220-5118-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	25	714022205118
0eee4848-e5b5-4857-a85a-9a4747dff3c9	71402220-5118-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	25	714022205118
63bd92cc-207b-49a7-a151-4bcd598a2cd7	71402220-5119-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	39	714022205119
ee0bd7b5-4e2b-4313-9dc2-acf675671604	71402220-5119-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	49	714022205119
b5f7ac3e-c7f3-48f9-9163-6e72558ff36b	71402220-5119-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	70	714022205119
ff8595f6-f061-41fe-bc67-8a71cbba2e85	71402220-5119-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	97	714022205119
316acacb-2b8a-4051-8a88-4c7dc287d3ba	71402220-5119-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	94	714022205119
d224952f-e8d2-47c4-81e1-d04981d670d1	71402220-5119-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	98	714022205119
a2791a88-c15a-4f82-9ad5-8ed139146e5d	71402220-5119-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	42	714022205119
28a88d1c-69c1-4c9a-961a-58c7bbe2556a	71402220-5119-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	50	714022205119
16bdad67-65ef-4909-892e-8e0dd5fec62b	71402220-5119-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	21	714022205119
5ed9866b-e31d-47a7-bbcf-7cb5b0fdccf2	71402220-5119-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	33	714022205119
bc602574-c8b8-41a8-bfb7-377f73d2aae1	71402220-5119-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	11	714022205119
8557bf97-c724-49e6-a862-7a6867708df8	71402220-5119-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	17	714022205119
27f0ec4a-0b93-4dba-8a84-22403fbe7dba	71402220-5119-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	45	714022205119
076e2cb4-30b8-4237-a918-cc4cb3d629ee	71402220-5119-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	45	714022205119
f712bb98-15ed-462f-9387-d62540e75d13	71402220-5119-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	41	714022205119
7f68577d-3ca7-40c6-8872-e4b12e505fc7	71402220-5119-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	38	714022205119
8fda824f-4273-4fa8-beca-00e1d2b7538f	71402220-5119-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	20	714022205119
e0fad010-3c52-40b4-94d6-738dc4c8d4b6	71402220-5119-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	37	714022205119
1e8d3799-518c-4c93-a3b7-07539fb1f78f	71402220-5119-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	28	714022205119
c869df4f-9a4f-4dda-821f-05140c24cacd	71402220-5119-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	43	714022205119
fa12fc48-1672-4c1d-8474-1c9d9fc45b1a	71402220-5119-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	36	714022205119
102f2485-af1d-4903-8e9f-630acb29189e	71402220-5119-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	15	714022205119
df3d34df-1dd1-47e9-915b-a062ac7140c7	71402220-5119-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	30	714022205119
390f5b03-3f57-4a58-9faf-bf85659f924e	71402220-5119-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	50	714022205119
51b9099f-4fde-43eb-a39a-94a10d0141f2	71402220-5120-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	43	714022205120
4be2a734-d8a8-444d-bb8f-cca4b0716946	71402220-5120-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	69	714022205120
cd157ee8-b9df-4e9d-8320-1a3d7db28773	71402220-5120-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	49	714022205120
f7714133-4ebf-45b0-bb1b-027965cc7b90	71402220-5120-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	23	714022205120
c4da8429-b672-4864-a337-f77cef0936ee	71402220-5120-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	39	714022205120
5e9f7fef-f8c3-43d4-bbb5-6ef47dfd9920	71402220-5120-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	64	714022205120
edfdef29-9533-46c8-9cf6-d03b76cd4be0	71402220-5120-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	24	714022205120
eaa72c62-c953-4ea6-9004-d56b83eba6df	71402220-5120-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	17	714022205120
d19a37cc-9e9f-461c-a19d-ee787d95169f	71402220-5120-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	49	714022205120
3265dbc8-4e13-44b6-8602-951a52fa508c	71402220-5120-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	21	714022205120
37e2d949-4f0a-41f7-85dd-01b62511f787	71402220-5120-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	30	714022205120
c511b40e-3aac-4280-9c6b-2057111b09e6	71402220-5120-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	23	714022205120
7726d98f-9f3d-454b-87d1-d3e5fd39e77f	71402220-5120-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	33	714022205120
f0422b1a-2a00-4cb4-8136-358952c34559	71402220-5120-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	30	714022205120
8d369bc4-31d0-40a2-afee-d1add3a72839	71402220-5120-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	31	714022205120
4aa6567f-04d2-43d0-a76e-9074921e18ab	71402220-5120-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	37	714022205120
9c8a2182-e474-4e0a-9e98-d3a200e49e17	71402220-5120-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	47	714022205120
c76a244f-7056-4d79-9599-f96413ae1d49	71402220-5120-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	34	714022205120
34a2e9a4-d5b5-46f6-8317-8887a7174914	71402220-5120-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	34	714022205120
5df4a767-acc4-476b-9798-2952dadbfed0	71402220-5120-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	12	714022205120
69773fc8-8d51-4a33-af8f-1d679c28c089	71402220-5120-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	27	714022205120
caf6cab2-86f6-4d14-a216-1bf3d0460a45	71402220-5120-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	30	714022205120
9c7d9c5d-cf78-4097-9f79-88bb6be09d00	71402220-5120-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	13	714022205120
2dd3b5f4-54d4-4f10-a018-b37a54bba8f7	71402220-5120-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	41	714022205120
31b94b66-0432-4e11-a34c-af56ffa9dec0	71402220-5121-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	11	714022205121
18db2c3e-9553-4f30-8af2-aa35f0fba13e	71402220-5121-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	32	714022205121
87a1ff01-8d70-46c4-bc1c-90beea460530	71402220-5121-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	27	714022205121
6c6a7e2d-d5ec-47d7-b048-ca656e114194	71402220-5121-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	83	714022205121
6575d939-212a-440c-b98e-dce1f7b53476	71402220-5121-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	25	714022205121
6976e72f-3f2c-40cb-874f-7ef58a00544d	71402220-5121-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	77	714022205121
c4a252a4-6a07-495e-a629-3e624e90792e	71402220-5121-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	36	714022205121
22bde3b7-981d-4d25-879b-49954d73ec93	71402220-5121-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	43	714022205121
26cdbcfc-e3ac-49af-915e-c6a0d01e2603	71402220-5121-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	32	714022205121
6571ba24-6b0c-4f09-bf74-052f1ae7c81f	71402220-5121-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	42	714022205121
60d0f039-0756-4c1e-9a11-13afcdb8eb2e	71402220-5121-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	44	714022205121
def94494-c5c0-4f12-baf9-c2433f9547be	71402220-5121-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	14	714022205121
2eb498cf-9253-434e-bd0c-1acdcb0707e2	71402220-5121-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	28	714022205121
5552fcb3-46b4-4577-a915-c53ab610bf81	71402220-5121-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	25	714022205121
1c1d4c5a-aae4-446f-95c2-8c5ac9f79589	71402220-5121-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	26	714022205121
259e92ca-3c90-48a3-bbd5-1f805c9995c2	71402220-5121-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	40	714022205121
ee3bf646-83e5-4aa8-b46f-21d4535ff5dc	71402220-5121-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	32	714022205121
49865845-9cf5-4196-a5ed-07581589f4bc	71402220-5121-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	22	714022205121
c955bb37-33b1-4b6a-a609-4611f042ecb0	71402220-5121-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	21	714022205121
8ba1f032-f569-4b0d-a420-8a1f8699c190	71402220-5121-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	41	714022205121
bd237575-b132-4c0f-880a-de561cfafbac	71402220-5121-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	43	714022205121
87bc38f1-3b41-4267-8c22-98f3c6c3d52d	71402220-5121-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	10	714022205121
8eaeb93b-114d-42ee-b1e2-931bca7ab6d9	71402220-5121-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	23	714022205121
d1816b48-09b0-4e37-99f5-60f4206d3ca9	71402220-5121-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	25	714022205121
4c1ed8a0-6926-4ea4-8b64-52ff7d6a9360	71402220-5301-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	20	714022205301
3ae15534-8f27-4df5-98c2-ed343917120c	71402220-5301-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	22	714022205301
622e7aa6-d17c-4072-8e4d-dd2427439bd0	71402220-5301-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	40	714022205301
11c17a22-bce1-490c-a39d-7f215d1680e2	71402220-5301-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	10	714022205301
1c3fa802-fac9-411f-84fc-81aeeca616bc	71402220-5301-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	46	714022205301
d58313a9-d567-4c99-8006-ba37a6832083	71402220-5123-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	91	714022205123
efc623f0-1ea3-476c-9b21-098e8180d2b9	71402220-5123-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	21	714022205123
04c245ca-c48d-4e82-95ac-4c82b0c7161d	71402220-5123-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	31	714022205123
3b548272-cd17-4f95-96b6-2277c990aa51	71402220-5123-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	48	714022205123
ae3c8845-f679-4a51-bf11-5482934009cf	71402220-5123-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	48	714022205123
3244ea94-f8b2-4860-a846-715637d520b4	71402220-5123-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	19	714022205123
2491d1f2-6c10-494e-8394-be577d9b6036	71402220-5123-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	15	714022205123
01a0d3d2-39e8-448b-9384-4a34ec3dfb99	71402220-5123-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	45	714022205123
fd5d0af0-97dd-4145-99d7-eb10aa513782	71402220-5123-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	50	714022205123
2bfe6e7f-a3bb-4066-a633-0e603943da9f	71402220-5123-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	43	714022205123
258d0323-cb3c-42b1-be93-0335640bfc6d	71402220-5123-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	47	714022205123
09baec30-959c-4a90-9c80-2aa87f976832	71402220-5124-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	44	714022205124
22b0f511-2732-4db6-b356-b3bc5cad6349	71402220-5124-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	24	714022205124
3f6ac93c-c3e5-4691-9090-1642f944bf81	71402220-5124-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	30	714022205124
651d96ad-22a9-4654-82af-19a361fa0df5	71402220-5124-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	24	714022205124
aa28fc5f-7724-40d8-93e9-6ada430f5ae5	71402220-5124-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	44	714022205124
f42e7669-39c0-4969-aa9f-188bdd57ce58	71402220-5124-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	40	714022205124
4a707cdb-a391-414a-8b24-e5acc3ffa0a6	71402220-5124-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	10	714022205124
f7dce51a-5129-41d2-b5cd-776cc0440e69	71402220-5124-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	41	714022205124
0c140942-8e50-4b14-9c81-36b75c77b018	71402220-5124-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	26	714022205124
7d4d52af-5489-4bb9-a19a-f0142655d899	71402220-5124-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	35	714022205124
ad004bab-61a6-45f6-a714-0f2ea4df70a7	71402220-5124-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	37	714022205124
fef1ed49-7ced-482f-aeba-922ce9c682f5	71402220-5123-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	46	714022205123
b5aa05b7-d2ad-49c2-8d11-c091d7012ba7	71402220-5115-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	29	714022205115
7e63e2b0-ead4-469b-8862-25c19924c704	71402220-5115-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	13	714022205115
a1a2aa59-71a0-43ff-8edf-c4d9e4b1bde1	71402220-5115-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	28	714022205115
43bbfb11-735c-4a0b-84aa-9a7631e81f5d	71402220-5115-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	29	714022205115
14f55623-8447-476c-9d5d-765bf7997212	71402220-5115-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	25	714022205115
16efa31a-24a7-4119-aa82-801d3ab9f947	71402220-5115-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	61	714022205115
f5a0f774-61ca-4030-aa72-90921686c614	71402220-5115-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	38	714022205115
d742725b-d793-4543-98f0-e6361cf4fa74	71402220-5115-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	98	714022205115
59ac6f2d-db34-4cd5-8866-82df9397251d	71402220-5115-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	26	714022205115
43850324-d64e-4638-bb5c-20e4fa8fa62b	71402220-5115-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	65	714022205115
d79d500b-eb4e-4452-a376-f0dcf17c3322	71402220-5301-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	35	714022205301
75df4569-b765-41e2-9b75-0bb6659b36e1	71402220-5301-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	33	714022205301
25635d6b-84ac-4a3f-85ef-7624babfab52	71402220-5301-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	47	714022205301
f6ad6d48-51c6-4e43-9410-2db4b4086b5b	71402220-5301-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	47	714022205301
13ffb92d-55ea-4608-93d6-29b1c4e99a67	71402220-5301-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	18	714022205301
259d0f73-d605-48e3-97e3-6ab6f6eb49ef	71402220-5301-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	16	714022205301
7af39b58-9e22-4f98-bc5a-9ddd6a5b7c08	71402220-5301-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	42	714022205301
c036e2f6-ed2c-4d2a-992b-721da261ea3b	71402220-5301-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	47	714022205301
88cc9611-504e-4e9e-a5fb-7b424a90fc57	71402220-5124-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	32	714022205124
a9ea5ead-a879-445b-ac01-acc8c393a76b	71402220-5124-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	46	714022205124
07278f64-e008-42bc-80bf-9d8845b02731	71402220-5124-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	40	714022205124
d599c8e3-21ed-44af-9946-58c6bab23a77	71402220-5124-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	23	714022205124
2bdd104e-4b35-4691-9e7c-3d6665e26415	71402220-5124-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	41	714022205124
a20395f7-26e5-4493-8630-c0a7e68d48f2	71402220-5124-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	16	714022205124
93e8a993-d589-414e-947c-087db0d8fff3	71402220-5124-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	44	714022205124
002da394-2da2-492a-ad73-04441561a4ff	71402220-5124-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	96	714022205124
665a9715-1a05-404f-ab53-2b469c03997d	71402220-5124-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	91	714022205124
bcd2f2da-cdfa-420d-8e19-d5b6a106c94f	71402220-5124-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	84	714022205124
caafe79c-bc7c-4bf8-82c2-0969be27dd82	71402220-5124-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	98	714022205124
847cd61c-205a-4134-8047-feec2ea0768e	71402220-5124-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	46	714022205124
34858d04-4478-455b-b09f-3563fb40a774	71402220-5124-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	12	714022205124
a0fbc4ef-027e-4483-98d2-bff448aed0d5	71402220-5123-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	18	714022205123
00f41021-27d7-49b4-8e4b-34583ae26b2b	71402220-5123-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	18	714022205123
080e74af-039e-418a-b6af-675d1775a258	71402220-5123-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	30	714022205123
38ec1c38-47fe-430a-b01d-097edce6c735	71402220-5123-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	33	714022205123
6951f5a6-8336-4e68-a525-22a07cdc1f18	71402220-5123-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	20	714022205123
c1513abd-dcb5-4472-94b3-8c2ad583819c	71402220-5123-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	35	714022205123
063127e0-8607-4f28-9179-13aac6a9031b	71402220-5123-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	46	714022205123
5310035c-a561-466f-b4ad-cf0d582c927c	71402220-5123-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	34	714022205123
9ad4d665-821e-4955-b131-45b08cbd19df	71402220-5123-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	12	714022205123
01ee28e1-15a5-41f1-b427-02609d7b09f0	71402220-5123-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	61	714022205123
b698c93c-e328-4061-99ee-58c0c9428030	71402220-5123-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	62	714022205123
5d14acd8-3b63-4bc7-bec4-c087f85de6c8	71402220-5123-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	85	714022205123
f4efdad9-4b37-4df0-ad64-ac47dc467065	71402220-5122-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	27	714022205122
4f5a0dd1-e677-47e4-8c21-39c8e066bd7a	71402220-5122-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	47	714022205122
3b659f39-6e5c-4ad4-97bd-f4aacfbaf817	71402220-5122-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	41	714022205122
b53fdc19-9a00-498f-a7a6-5d0847d9de9a	71402220-5122-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	33	714022205122
fddc174e-094a-4220-bd99-9faa994915d7	71402220-5122-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	11	714022205122
8eb52be2-21b1-4c1d-9a5e-62f9051735f3	71402220-5122-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	25	714022205122
b226483b-8b95-4abd-a1cc-5b16f01ba0d9	71402220-5122-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	24	714022205122
c6a0cc12-e408-4ecf-b244-9f3182694ea9	71402220-5122-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	42	714022205122
9feda159-d2bc-4164-8f33-18aad9ba2091	71402220-5122-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	41	714022205122
de8cb07e-4dc5-4340-93f9-84b889f4e5cf	71402220-5122-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	85	714022205122
3f802e4f-4046-4741-ab0e-92d9d6177d8b	71402220-5122-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	36	714022205122
024fbd10-a9e5-430a-a11d-c7cdaef75c47	71402220-5122-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	92	714022205122
7748472b-6504-48ab-8297-8949642f135b	71402220-5122-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	45	714022205122
57d3ccbb-8fa9-4fc0-90f9-c91afd3f35b0	71402220-5122-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	99	714022205122
73315a9f-3099-4841-8120-9ecdfcb1d1ef	71402220-5122-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	17	714022205122
f52673f8-b690-49d4-a182-fcb4234eb810	71402220-5122-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	45	714022205122
5290aee2-2672-4964-80d4-11c0fa1c8855	71402220-5122-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	25	714022205122
7cab4b65-cc16-4ac3-ac87-cb27294dee78	71402220-5122-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	31	714022205122
ece6c367-b28c-4da9-8005-340b03f473b2	71402220-5122-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	47	714022205122
d1286f77-17f0-4375-8935-2b40931db6b3	71402220-5122-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	13	714022205122
86c74ba9-5d41-4a9f-9731-9b3ec6c60f7c	71402220-5122-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	38	714022205122
8fb10bc6-81a8-44c0-85e9-98fe2b48f740	71402220-5122-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	42	714022205122
36a07cbc-592e-42be-858c-1d16fe1357e5	71402220-5122-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	45	714022205122
d936553a-0dd1-49ef-a92d-6cfe5a5b40f0	71402220-5122-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	97	714022205122
ab803593-bfb5-4798-adb6-6f6f32111394	71402220-5064-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	45	714022205064
673f9a7b-007a-49cf-b907-ca9482137f2a	71402220-5064-0000-0000-000000000000	5751738c-c73a-433c-8661-7fe5626f6d31	37	714022205064
e7a0ef0a-ed1a-438a-80b4-e6629f322ff2	71402220-5064-0000-0000-000000000000	8e28e046-03a2-4340-a140-2bc26e236542	30	714022205064
2fd1916a-6b96-49a4-8a97-f8d55a140224	71402220-5064-0000-0000-000000000000	be92f4be-476c-416c-bf36-2c04f0a09107	32	714022205064
be705ffb-b09b-4cf9-a70f-f3037fcb89a2	71402220-5064-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	22	714022205064
f447272c-26ff-4458-b4ec-b38c1752fd2c	71402220-5112-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	39	714022205112
f0638e14-3431-454d-8ef8-6c18c761e83a	71402220-5112-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	91	714022205112
b3c62e57-6e4d-4494-aa6f-05940377c700	71402220-5112-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	54	714022205112
ac0b5df3-a435-491a-96e4-ca6cce8f3b5a	71402220-5112-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	86	714022205112
17e67094-797a-4d22-b187-5c5d907d6269	71402220-5113-0000-0000-000000000000	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	28	714022205113
cd56ceb0-2ea0-449f-9898-0203ee8caaf0	71402220-5108-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	78	714022205108
5f54fda4-0b9e-4728-8ee5-d5f7d9658ba8	71402220-5108-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	26	714022205108
e0a23387-6495-4cf6-9f36-f221a3f71a5c	71402220-5108-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	98	714022205108
e2dd8bc9-bc0e-49a0-ba74-d26fd2c89892	71402220-5108-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	85	714022205108
874500aa-0711-4d36-8970-c22001bfffdf	71402220-5109-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	62	714022205109
7cc69099-3a6c-417c-af0e-f40ae35129fd	71402220-5109-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	50	714022205109
d5ebe0b5-109f-4a9e-835e-dee326e6da08	71402220-5109-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	32	714022205109
19b202ba-b4e9-47bd-ad18-b9b03d1c684c	71402220-5109-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	37	714022205109
15b6683f-ebb3-4aa9-8b63-cb09c1523666	71402220-5109-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	39	714022205109
03e518ea-b1be-4a4e-88bb-a92f34a89aa9	71402220-5301-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	30	714022205301
f2b646cd-0642-40fb-a909-92d3a0087831	71402220-5301-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	47	714022205301
0235a230-1c00-424f-97fc-bd88a43122bd	71402220-5301-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	48	714022205301
bc091a65-732a-42a2-ba9a-c6ce1b97fcfe	71402220-5301-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	24	714022205301
3a3a4090-90c4-42c0-ba5d-eb119cf405a2	71402220-5301-0000-0000-000000000000	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	28	714022205301
5e8cd6d1-66e3-4108-8fb9-7e5c1013c1c3	71402220-5301-0000-0000-000000000000	fc8f926c-472b-424e-af90-a80083f9f4a2	65	714022205301
81861f74-2270-4881-b6f9-28144da3b1c4	71402220-5301-0000-0000-000000000000	7785681a-99aa-460a-ba55-0618b3d1240a	53	714022205301
6f2df50e-161e-45df-a54f-798e1aad96db	71402220-5301-0000-0000-000000000000	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	20	714022205301
dbbdef43-8df0-41d9-bfdf-1ce73185e7a4	71402220-5301-0000-0000-000000000000	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	73	714022205301
9cc44197-e06f-4537-9724-5266100f9ede	71402220-5301-0000-0000-000000000000	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	94	714022205301
7c3ee0dd-c585-43e9-9729-331229636a98	71402220-5301-0000-0000-000000000000	2f31f98e-49f7-4228-a40c-83d32ea2a65e	44	714022205301
4b010108-9548-4bd2-8183-03cd7628a292	71402220-5125-0000-0000-000000000000	084270d6-359e-4f04-8f07-3ea02b6295c1	17	714022205125
60a5559e-ff98-4fd3-8147-0b58a366af9d	71402220-5125-0000-0000-000000000000	41fc512d-a3a9-4373-a6e9-b121930c719f	49	714022205125
59d23bad-04e9-486d-9e95-e9cce0ba6cf1	71402220-5125-0000-0000-000000000000	c5e7da9d-1212-46c4-812d-bdfea79d73de	19	714022205125
935e1077-224b-464a-aa76-317385f348ee	71402220-5125-0000-0000-000000000000	162e7d48-047e-43db-a3f8-e01824560a44	16	714022205125
b398d6de-9d77-49d9-82c4-e73f9034be38	71402220-5125-0000-0000-000000000000	403711ee-8fb2-46c7-bd14-025257c8ea0b	27	714022205125
d8b3b74a-dd6a-4bf0-819e-41644b30aea8	71402220-5125-0000-0000-000000000000	76207536-9b24-46e2-95c7-2ebb957204d6	48	714022205125
e956e3d7-0d61-4765-b3d2-076769cffe21	71402220-5125-0000-0000-000000000000	1db4284b-b1d5-466c-85c5-422f8d5860d8	25	714022205125
af26323f-1d8a-4909-84e3-56cbc961fc87	71402220-5125-0000-0000-000000000000	7b8a8cd1-a654-41ab-bff8-3ee016a21383	16	714022205125
719e8a4a-c795-47e5-bca6-e298f41cf1c3	71402220-5125-0000-0000-000000000000	8e417e36-b2e8-498b-a3c0-6237345c96ad	43	714022205125
3917d69f-7389-418f-9be2-47941f7f6225	71402220-5125-0000-0000-000000000000	54a7f8d6-f067-4337-bea6-58f74e9c95c7	15	714022205125
f7af120a-4a80-4f21-af03-4af96159a0f7	71402220-5125-0000-0000-000000000000	3fecedc7-832f-4968-80a3-57c58f5163c8	44	714022205125
82182281-4de1-4052-abd2-5f2a7ee64832	71402220-5125-0000-0000-000000000000	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	45	714022205125
c657783b-5e30-459a-89f2-1a094ecd69ac	71402220-5125-0000-0000-000000000000	2e40d453-9bc6-4fd3-9a85-453970544d7f	39	714022205125
368f4d33-530c-4228-b9dd-edafad150d4f	de94f1d9-6364-4191-8108-be58c5ff7ba1	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	50	714022205104
f52dbe6e-ecc7-4349-ad21-a04dd731af46	de94f1d9-6364-4191-8108-be58c5ff7ba1	fc8f926c-472b-424e-af90-a80083f9f4a2	84	714022205104
1ce09b4d-bee6-4918-9895-c327a1da1861	de94f1d9-6364-4191-8108-be58c5ff7ba1	7785681a-99aa-460a-ba55-0618b3d1240a	98	714022205104
6de1ae5a-6157-4d29-884e-4fe9f38ef1b1	de94f1d9-6364-4191-8108-be58c5ff7ba1	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	100	714022205104
b229ac2f-23dd-4461-80ce-264a7c2dfaf1	de94f1d9-6364-4191-8108-be58c5ff7ba1	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	85	714022205104
fca65979-4688-487d-8518-e43e1400dee1	de94f1d9-6364-4191-8108-be58c5ff7ba1	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	19	714022205104
30b2e2a7-2186-4433-b562-0f905b956df9	de94f1d9-6364-4191-8108-be58c5ff7ba1	2f31f98e-49f7-4228-a40c-83d32ea2a65e	24	714022205104
882c62c1-8aae-4428-be6b-af33d8e5a930	de94f1d9-6364-4191-8108-be58c5ff7ba1	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	38	714022205104
1168cef2-c422-4980-95a3-926de67ba423	de94f1d9-6364-4191-8108-be58c5ff7ba1	5751738c-c73a-433c-8661-7fe5626f6d31	50	714022205104
2c616086-7d3b-4155-99fc-9030c938ede7	de94f1d9-6364-4191-8108-be58c5ff7ba1	8e28e046-03a2-4340-a140-2bc26e236542	33	714022205104
fd61163e-bc11-4c5f-b1f6-64f186498a46	de94f1d9-6364-4191-8108-be58c5ff7ba1	be92f4be-476c-416c-bf36-2c04f0a09107	43	714022205104
dedc17dd-798c-40a7-a44d-a782c82bdae5	de94f1d9-6364-4191-8108-be58c5ff7ba1	084270d6-359e-4f04-8f07-3ea02b6295c1	41	714022205104
557c1aaf-caa4-4670-8f29-897cf0e5fceb	de94f1d9-6364-4191-8108-be58c5ff7ba1	41fc512d-a3a9-4373-a6e9-b121930c719f	26	714022205104
2d8ac78f-3d8a-4aff-90fc-4d3c2da27e7d	de94f1d9-6364-4191-8108-be58c5ff7ba1	c5e7da9d-1212-46c4-812d-bdfea79d73de	15	714022205104
8725cf33-17f7-4249-ba4c-e4cb3ffd9e3a	de94f1d9-6364-4191-8108-be58c5ff7ba1	162e7d48-047e-43db-a3f8-e01824560a44	30	714022205104
5faa9ba8-a3d9-4619-b4f8-bb84142127fb	de94f1d9-6364-4191-8108-be58c5ff7ba1	403711ee-8fb2-46c7-bd14-025257c8ea0b	36	714022205104
a7b4a431-6a34-4a88-a86d-c738ed32996a	de94f1d9-6364-4191-8108-be58c5ff7ba1	76207536-9b24-46e2-95c7-2ebb957204d6	19	714022205104
b1961152-3563-4ef3-b583-f69bbde080c6	de94f1d9-6364-4191-8108-be58c5ff7ba1	1db4284b-b1d5-466c-85c5-422f8d5860d8	37	714022205104
4661c428-c9af-410b-8354-ba100879f332	de94f1d9-6364-4191-8108-be58c5ff7ba1	7b8a8cd1-a654-41ab-bff8-3ee016a21383	40	714022205104
f6f4fe5c-c537-464d-9a4b-5973381219f7	de94f1d9-6364-4191-8108-be58c5ff7ba1	8e417e36-b2e8-498b-a3c0-6237345c96ad	22	714022205104
74601f7d-478c-4050-88a9-81dba1a099b3	de94f1d9-6364-4191-8108-be58c5ff7ba1	54a7f8d6-f067-4337-bea6-58f74e9c95c7	50	714022205104
c27cc8d4-d189-4d7e-b42d-0e8d8c15e8b7	de94f1d9-6364-4191-8108-be58c5ff7ba1	3fecedc7-832f-4968-80a3-57c58f5163c8	21	714022205104
eaffabb1-f333-477f-8ea5-e8c760ebef79	de94f1d9-6364-4191-8108-be58c5ff7ba1	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	27	714022205104
add6b030-a731-4c63-a993-d0c1b8b8e743	de94f1d9-6364-4191-8108-be58c5ff7ba1	2e40d453-9bc6-4fd3-9a85-453970544d7f	26	714022205104
552d7e6b-f243-4018-93ee-7d170d9e839a	65f4f15f-02b3-45f7-acfb-37cf161870eb	978c2de3-4b7d-4adc-bdc8-d4136d9daa79	48	714022205116
f00f6469-004e-4acd-9b08-0e5c0f5b19db	65f4f15f-02b3-45f7-acfb-37cf161870eb	2f31f98e-49f7-4228-a40c-83d32ea2a65e	38	714022205116
1003f79b-9dc7-4dc4-9cce-4bae36814c1f	65f4f15f-02b3-45f7-acfb-37cf161870eb	5751738c-c73a-433c-8661-7fe5626f6d31	35	714022205116
e5875d2f-646a-4692-989e-880ad1267709	65f4f15f-02b3-45f7-acfb-37cf161870eb	8e28e046-03a2-4340-a140-2bc26e236542	45	714022205116
b27fe969-3a13-48a7-b277-6628b65d0c1b	65f4f15f-02b3-45f7-acfb-37cf161870eb	be92f4be-476c-416c-bf36-2c04f0a09107	47	714022205116
8dc8f944-5641-47b2-a73c-055e382bdf69	65f4f15f-02b3-45f7-acfb-37cf161870eb	084270d6-359e-4f04-8f07-3ea02b6295c1	47	714022205116
3a640f09-c4c2-439f-aa9f-b818f6fa7e92	65f4f15f-02b3-45f7-acfb-37cf161870eb	41fc512d-a3a9-4373-a6e9-b121930c719f	21	714022205116
d9b28826-2c65-4f2b-8734-1768324962a8	65f4f15f-02b3-45f7-acfb-37cf161870eb	c5e7da9d-1212-46c4-812d-bdfea79d73de	46	714022205116
5f32fced-4551-4f7e-b167-eb52b30b6d92	65f4f15f-02b3-45f7-acfb-37cf161870eb	162e7d48-047e-43db-a3f8-e01824560a44	31	714022205116
8e14e985-ee27-4642-9619-1e63ce614d0a	65f4f15f-02b3-45f7-acfb-37cf161870eb	403711ee-8fb2-46c7-bd14-025257c8ea0b	12	714022205116
2af01285-14c3-4872-9063-c124ebd77392	65f4f15f-02b3-45f7-acfb-37cf161870eb	76207536-9b24-46e2-95c7-2ebb957204d6	32	714022205116
f2eb6713-9bbc-4ca4-aaba-6e5e9890685b	65f4f15f-02b3-45f7-acfb-37cf161870eb	1db4284b-b1d5-466c-85c5-422f8d5860d8	24	714022205116
9089f122-e8b1-4a84-a222-44f11b53f8c0	65f4f15f-02b3-45f7-acfb-37cf161870eb	7b8a8cd1-a654-41ab-bff8-3ee016a21383	17	714022205116
57089dc3-8315-4344-95b1-162a63b24064	65f4f15f-02b3-45f7-acfb-37cf161870eb	8e417e36-b2e8-498b-a3c0-6237345c96ad	20	714022205116
7b761f67-253a-4947-8168-7a20668f9187	65f4f15f-02b3-45f7-acfb-37cf161870eb	54a7f8d6-f067-4337-bea6-58f74e9c95c7	49	714022205116
3dacf2a7-9e8e-4cf0-942b-79b469640a69	65f4f15f-02b3-45f7-acfb-37cf161870eb	3fecedc7-832f-4968-80a3-57c58f5163c8	23	714022205116
7ad9fdee-5baa-420c-9a1a-76364d99b57f	65f4f15f-02b3-45f7-acfb-37cf161870eb	f8bb04aa-caa4-44f0-8d6f-b79ac6dc77b7	28	714022205116
866c6878-6135-483b-a1c0-64f8d5f1c0b0	65f4f15f-02b3-45f7-acfb-37cf161870eb	2e40d453-9bc6-4fd3-9a85-453970544d7f	22	714022205116
5d73b6a9-f7d5-4fd6-9a76-b23990cc24d4	65f4f15f-02b3-45f7-acfb-37cf161870eb	9af9f3f0-9fb1-47a3-8eca-fa190176de8c	28	714022205116
816b48e9-5a28-4e87-b66c-eceeb92f4d2a	65f4f15f-02b3-45f7-acfb-37cf161870eb	fc8f926c-472b-424e-af90-a80083f9f4a2	14	714022205116
297b40cd-7250-4d18-b3ad-45a2768f8631	65f4f15f-02b3-45f7-acfb-37cf161870eb	7785681a-99aa-460a-ba55-0618b3d1240a	62	714022205116
a9427286-3257-424b-88d1-b6f5cd2f9f38	65f4f15f-02b3-45f7-acfb-37cf161870eb	1733db7e-e24b-41cb-ac8f-5ee8c34a4283	80	714022205116
a731aaa3-3193-4abe-899b-791fe3bc32a7	65f4f15f-02b3-45f7-acfb-37cf161870eb	86f91ebc-9d44-44ef-85cd-7339d2d6ffc7	80	714022205116
4fd1b6b4-6f68-469b-99e6-0d16eee62d8f	65f4f15f-02b3-45f7-acfb-37cf161870eb	c884ce9a-2387-4a5e-96c0-fbc7f02a3e2e	42	714022205116
\.


--
-- Data for Name: student_leave_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."student_leave_requests" ("request_id", "student_id", "class_code", "start_date", "end_date", "reason", "status") FROM stdin;
\.


--
-- Data for Name: student_on_duty_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."student_on_duty_request" ("request_id", "student_id", "class_code", "start_date", "end_date", "reason", "status") FROM stdin;
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tasks" ("task_id", "user_id", "course_id", "task_title", "description", "deadline", "status") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
profile-photos	profile-photos	\N	2024-05-23 17:39:21.3801+00	2024-05-23 17:39:21.3801+00	t	f	\N	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
229abaa2-3deb-4f3e-9dad-b4112f0e3301	profile-photos	20220711_135250_edited.jpg	\N	2024-05-23 17:39:50.007406+00	2024-05-23 17:39:50.007406+00	2024-05-23 17:39:50.007406+00	{"eTag": "\\"15bfef4b6d2d65b4ecc94fd5d53a9bd8\\"", "size": 129625, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-05-23T17:39:50.000Z", "contentLength": 129625, "httpStatusCode": 200}	9de5db9b-2353-4791-95a3-0deec58bad93	\N	\N
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 165, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: absentees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."absentees_id_seq"', 1, false);


--
-- Name: classes_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."classes_class_id_seq"', 6, true);


--
-- Name: course_class_faculty_mapping_mapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."course_class_faculty_mapping_mapping_id_seq"', 18, true);


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."departments_department_id_seq"', 15, true);


--
-- Name: student_leave_requests_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."student_leave_requests_request_id_seq"', 1, false);


--
-- Name: student_register_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."student_register_number_seq"', 38, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
