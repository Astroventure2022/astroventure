import 'package:astroventure/gamedata.dart';
import 'package:astroventure/scrolling_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'utils.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key key, this.missionName, this.missionBrief, this.credit, this.features}) : super(key: key);
  final String missionName;
  final String missionBrief;
  final double credit;
  final List<Feature> features;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  double credit;
  List<Feature> selectedFeatures = [];
  bool showDetails = false;
  int currentIndex;

  PageController controller = PageController(
    viewportFraction: 1,
    initialPage: 999,
  );

  addFeature(Feature feature) {
    bool exists = selectedFeatures.contains(feature);
    if(!exists) {
      if(feature.cost<= credit) {
        setState(() {
          credit -= feature.cost;
          selectedFeatures.add(feature);
        });
      }
    } else {
      setState(() {
        credit += feature.cost;
        selectedFeatures.remove(feature);
      });
    }
  }

  showBrief(context){
    showModalBottomSheet(
      context: context,
      backgroundColor: CustomColors.background,
      builder: (context){
        return Padding(
          padding: const EdgeInsets.only(bottom: 60, top: 30),
          child: Column(
            children: [
              Text(
                widget.missionName,
                style: const TextStyle(
                  color: CustomColors.primary,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              
              Expanded(child: ScrollingText(text: widget.missionBrief)),
            ],
          ),
        );
      }
    );
  }

  showFeatureDetails(){
    setState(() => showDetails = true);
  }

  onOptionChange(int index){
    setState(() {
      showDetails = false;
      currentIndex = index % widget.features.length;
    });
  }

  @override
  initState() {
    credit = widget.credit;
    currentIndex = 999 % widget.features.length;
    // selectedFeatures = widget.features;
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272324),
      body: SafeArea(
        child: GestureDetector(
          onVerticalDragUpdate: (details) {
            int sensitivity = 8;
            if (details.delta.dy > sensitivity) {
              showBrief(context);
            } else if(details.delta.dy < -sensitivity){
              showFeatureDetails();
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Hero(
                  tag: "missionName",
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      widget.missionName,
                      style: const TextStyle(
                        color: CustomColors.primary,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                credit.toStringAsFixed(2),
                style: const TextStyle(
                  color: CustomColors.secondary,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: selectedFeatures.isEmpty ? const SizedBox():DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(8),
                    color: CustomColors.primary.withOpacity(0.4),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(selectedFeatures.length, (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 6.0, left: 5, right: 5),
                        child: Text(
                          '${index+1}. ${selectedFeatures[index].title}',
                          style: const TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  key: Key(showDetails.toString()),
                  alignment: Alignment.bottomCenter,
                  child: AnimatedOpacity(
                    opacity: showDetails? 1: 0,
                    duration: const Duration(milliseconds: 300),
                    child: ScrollingText(
                      text: widget.features[currentIndex].description,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: onOptionChange,
                  itemBuilder: (context,i){
                    int index = i%widget.features.length;
                    return _FeatureItem(
                      feature: widget.features[index],
                      onTap: ()=> addFeature(widget.features[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class _FeatureItem extends StatelessWidget {
  const _FeatureItem({Key key, @required this.feature, this.onTap}) : super(key: key);
  final Feature feature;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        HapticFeedback.heavyImpact();
        if(onTap!=null) onTap();
      },
      child: Container(
        color: Colors.transparent,
        child: Opacity(
          opacity: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                feature.title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: CustomColors.accent, fontSize: 28, fontWeight: FontWeight.w600),
              ),
              Text(
                feature.cost.toStringAsFixed(2),
                textAlign: TextAlign.center,
                style: const TextStyle(color: CustomColors.secondary, fontSize: 22,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}