import 'package:astroventure/colors.dart';
import 'package:astroventure/guide/details.dart';
import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

import '../slider_control.dart';

class GuideCategoriesPage extends StatefulWidget {
  const GuideCategoriesPage({Key key, @required this.guide}) : super(key: key);
  final Guide guide;

  @override
  State<GuideCategoriesPage> createState() => _GuideCategoriesPageState();
}

class _GuideCategoriesPageState extends State<GuideCategoriesPage> {

  List<ControlOption> options = [];
  GuideCategory currentCategory;

  void onCategoryChange(ControlOption c){
    setState(() {
      currentCategory = widget.guide.categories.firstWhere((element) => element.id==c.id);
    });
  }

  void onSelect(ControlOption c){
    var selectedCategory = widget.guide.categories.firstWhere((element) => element.id==c.id);
    Navigator.push(context, MaterialPageRoute(builder: (context) => GuideDetailsPage(category: selectedCategory)));
  }

  @override
  void initState() {
    if(widget.guide.categories!=null){
      for(var c in widget.guide.categories){
        options.add(ControlOption(id: c.id, title: c.title));
      }
      currentCategory = widget.guide.categories.first;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: Column(
            children: [
              const Hero(
                tag: 'title',
                child: Material(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      "Astroventure",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                key: Key(currentCategory.toString()),
                flex: 2,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.guide.title}:',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            ),
                          ),
                          const SizedBox(height: 14),
                          ...List.generate(currentCategory?.items?.length??0, (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              '${index+1}. ${currentCategory.items[index].title}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
              ),
              Expanded(
                flex: 1,
                child: SliderControl(
                  options: options,
                  onSelect: onSelect,
                  onChange: onCategoryChange,
                ),
              ),
            ]
        ),
      ),
    );
  }
}
