import 'package:flutter/material.dart';

class ExpansionPanelItem{
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
  });
}
class ExpansionPanelDemo extends StatefulWidget {
  ExpansionPanelDemo({Key key}) : super(key: key);

  @override
  ExpansionPanelDemoState createState() => ExpansionPanelDemoState();
}

class ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;
  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding:EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Context for Panel A.'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding:EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Context for Panel B.'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding:EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Context for Panel C.'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: 'Panel D',
        body: Container(
          padding:EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Context for Panel D.'),
        ),
        isExpanded: false
      )
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('ExpansionPanelDemo'),
        elevation: 0,
      ),
      body: Container(
         padding: EdgeInsets.all(16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded){
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children:_expansionPanelItems.map((ExpansionPanelItem item){
                return ExpansionPanel(
                  headerBuilder: (BuildContext context,bool isExpanded){
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.title,
                      ),
                    );
                  }, 
                  body: item.body,
                  isExpanded: item.isExpanded
                );
              }).toList(),
            )
           ],
         ),
      ),
    );
  }
}