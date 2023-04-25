import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:midwest/auth/user_bloc.dart';
import 'package:midwest/auth/colleges_bloc.dart';
import 'package:flutter/material.dart';

class CollageSelectingScreen extends StatelessWidget {
  const CollageSelectingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SelectionHeader(),
          FacultiesList(),
        ],
      ),
    );
  }
}

class SelectionHeader extends StatelessWidget {
  const SelectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).padding.top),
          color: Colors.blue,
          width: double.maxFinite,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(800.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(800.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(800.0),
                    child: Image.network(
                      "https://www.mwu.edu.np/wp-content/themes/muniversity/images/mu%20logo.png",
                      height: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Med-west University".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8),
          child: Text(
            "Select Your Course",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class FacultiesList extends ConsumerWidget {
  const FacultiesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserBloc userBloc = ref.watch(userProvider.notifier);
    return StreamBuilder<List<Faculty>>(
      stream: CollegeBloc.instance().faculties,
      initialData: const [],
      builder: ((context, snapshot) {
        final faculties = snapshot.data ?? [];
        return Expanded(
          child: ListView.builder(
            itemCount: faculties.length,
            itemBuilder: ((context, index) {
              final faculty = faculties[index];
              return Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10, right: 10, bottom: 5),
                child: Container(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4)),
                  child: DropdownButton<Course>(
                    dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: Text(faculty.name),
                    isExpanded: true,
                    underline: const SizedBox(),
                    style: const TextStyle(color: Colors.black, fontSize: 22),
                    items: faculty.courses.map((e) {
                      return DropdownMenuItem<Course>(
                        value: e,
                        child: Text(e.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      userBloc.setCourse(
                        course: value!.id,
                        faculty: faculty.id,
                      );
                    },
                  ),
                ),
              );
            }),
          ),
        );
      }),
    );
  }
}
// this is fork try
