import 'package:flutter/material.dart';
import 'package:radi_app/widgets/signup/horizon.dart';
import 'package:radi_app/widgets/signup/knowledge.dart';
import 'package:radi_app/widgets/signup/risk_tolerance.dart';

class RiskHorizonKnowledge extends StatefulWidget {
  const RiskHorizonKnowledge({super.key});

  @override
  State<RiskHorizonKnowledge> createState() => _RiskHorizonKnowledgeState();
}

class _RiskHorizonKnowledgeState extends State<RiskHorizonKnowledge> {
  String? riskSelected;
  String? horizonSelected;
  String? knowledgeSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Risk Tolerance:  ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                width: 170,
                child: riskTolerance(onChanged: (value) {
                  setState(() {
                    riskSelected = value;
                  });
                }),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Investment\nHorizon:         ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                width: 170,
                child: investmentHorizon(onChanged: (value) {
                  setState(() {
                    horizonSelected = value;
                  });
                }),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Investment\nKnowledge:  ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                width: 170,
                child: investmentKnowledge(onChanged: (value) {
                  setState(() {
                    knowledgeSelected = value;
                  });
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
