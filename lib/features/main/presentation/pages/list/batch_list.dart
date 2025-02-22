import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/features/main/presentation/bloc/batch_bloc/batch_bloc.dart';
import 'package:project_pulse/features/main/presentation/widgets/items/batch_item.dart';

class BatchList extends StatelessWidget {
  const BatchList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BatchBloc>().add(FetchAllBatches());
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Batches'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<BatchBloc, BatchState>(
              builder: (context, state) {
                if (state is BatchLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is BatchLoaded) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final batch = state.data[index];
                      return BatchItem(
                        context: context,
                        batchName: batch.batchName,
                        // TODO: add more details
                        pageRoute: '/attendance/batch/${batch.batchId}',
                      );
                    },
                  );
                } else if (state is BatchFailure) {
                  return Center(
                    child: Text(state.message),
                  );
                } else {
                  return Container();
                }
              },
            )),
      ),
    );
  }
}
