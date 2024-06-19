import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/batch_item.dart';
import 'package:project_pulse/features/main/domain/entities/batch.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';

class AttendanceBatchList extends StatelessWidget {
  const AttendanceBatchList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MainBloc>().add(FetchAllBatches());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Batch'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  if (state is MainLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is MainLoaded<List<Batch>>) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        final batch = state.data[index];
                        return BatchItem(
                          context: context,
                          batchName: batch.batchName,
                          pageRoute: '/attendance/batch/${batch.batchId}',
                        );
                      },
                    );
                  } else if (state is MainFailure) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return Container();
                  }
                },
              )),
        ),
      ),
    );
  }
}
