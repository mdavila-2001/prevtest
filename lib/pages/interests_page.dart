import 'package:cobanacademy/env.dart';
import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/mutation_collections.dart';
import 'package:cobanacademy/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/colors.dart';

class InterestsPage extends StatefulWidget {
  final String email;

  const InterestsPage({super.key, required this.email});

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  bool bandera = false;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  List<bool> selectedItems = List<bool>.generate(5, (index) => false);
  List<Size> itemsSizes = const [
    Size(1, 1),
    Size(1, 1.25),
    Size(1, 1.25),
    Size(1, 1),
    Size(2, 0.75),
  ];

  @override
  Widget build(BuildContext context) {
    int itemsCounter =
        selectedItems.where((item) => item == true).toList().length;
    return Scaffold(
      backgroundColor: AppColor.primaryDarkPurple,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '¿En qué podemos ayudarte?',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Selecciona 3 intereses y el resto lo hacemos por tí.',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColor.grey1,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    'Seleccionado $itemsCounter de 3',
                    style: const TextStyle(color: AppColor.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24,
                    children: List<StaggeredGridTile>.generate(
                        Environment.exploreFilters.length - 1,
                        (index) => StaggeredGridTile.count(
                            crossAxisCellCount: itemsSizes[index].width.toInt(),
                            mainAxisCellCount: itemsSizes[index].height,
                            child: CustomCheckbox(
                              label: Environment.exploreFilters[index + 1],
                              isChecked: selectedItems[index],
                              onChanged: (value) {
                                setState(() {
                                  if (value == true &&
                                      selectedItems
                                              .where((element) => element)
                                              .length <
                                          3) {
                                    selectedItems[index] = value!;
                                  } else if (value == false) {
                                    selectedItems[index] = value!;
                                  }
                                });
                              },
                            ))),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GraphQLProvider(
                client: GraphQLConfiguration.clientToQuery(),
                child: Mutation(
                  options: MutationOptions(
                    document: gql(MutationCollections().setUpdateReferido),
                    onCompleted: (dynamic resultData) {
                      fakeLogin();
                    },
                  ),
                  builder: (runMutation, QueryResult<Object?>? result) {
                    return ElevatedButton(
                        onPressed: itemsCounter == 3
                            ? () {
                                setState(() {
                                  bandera = true;
                                });

                                List<String> interest = [];

                                for (int i = 0; i < selectedItems.length; i++) {
                                  if (selectedItems[i]) {
                                    interest.add((i + 1).toString());
                                  }
                                }
                                runMutation({
                                  "id_usuario": "1",
                                  "intereses": interest,
                                });
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppColor.primaryPurple,
                            foregroundColor: AppColor.white,
                            disabledBackgroundColor: AppColor.purpleBlue800,
                            disabledForegroundColor: AppColor.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        child: bandera
                            ? const SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  child: Center(child: Text('Iniciando...')),
                                ))
                            : const SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  child: Center(child: Text('Continuar')),
                                )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void fakeLogin() async {
    try {
      final SharedPreferences prefs = await _prefs;
      await prefs.setString('email', "cuellarrojasuwil@gmail.com");
      if (!mounted) return;
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 400),
              child: SplashPage(versionLocal: Environment.version)));
    } catch (e) {
      if (!mounted) return;
    }
  }
}

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool isChecked;
  final void Function(bool?)? onChanged;

  const CustomCheckbox(
      {super.key,
      required this.label,
      required this.isChecked,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) {
          onChanged!(!isChecked);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isChecked
                ? [
                    AppColor.purpleBlue600,
                    AppColor.babyLila,
                  ]
                : [
                    AppColor.checkboxGray,
                    AppColor.checkboxGray,
                  ],
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isChecked ? AppColor.babyLila : Colors.transparent,
          ),
        ),
        padding: const EdgeInsets.only(left: 8, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                Checkbox(
                  value: isChecked,
                  onChanged: onChanged,
                  checkColor: AppColor.white,
                  activeColor: AppColor.primaryPurple,
                  shape: const CircleBorder(),
                  side: const BorderSide(color: AppColor.white),
                ),
              ],
            ),
            Text(
              label,
              style: const TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
