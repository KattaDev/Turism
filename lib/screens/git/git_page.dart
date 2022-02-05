import 'package:flutter/material.dart';
import 'package:mobileapp/core/components/exporting_packages.dart';
import 'package:mobileapp/cubit/git_cubit/git_cubit.dart';
import 'package:mobileapp/widgets/git_list_widjet.dart';

class GitPage extends StatelessWidget {
  const GitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => GitCubit(),
      child: BlocBuilder<GitCubit, GitState>(
        builder: (context, state) {
          GitCubit cubit = context.watch();
          return Center(
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MyGitListWidjet(
                      imageUrl:
                          'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      name: 'Nargiza Ahmadjonova',
                      price: 150,
                      reyting: 4,
                      users: 24,
                      language: ['uzb', 'eng', 'rus']);
                },
                itemCount: 4,
              ),
            ),
          );
        },
      ),
    );
  }
}
