import 'package:flutter/material.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {

  DateTimeRange selectedDates=DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${selectedDates.duration.inDays}"),
            ElevatedButton(
                onPressed: ()async{
                  final DateTimeRange? dateTimeRange=await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));
                  if(dateTimeRange!=null){
                    setState(() {
                      selectedDates=dateTimeRange;
                    });
                  }
                },
                child: Text("Choose Dates"))
          ],
        ),
      ),
    );
  }
}
