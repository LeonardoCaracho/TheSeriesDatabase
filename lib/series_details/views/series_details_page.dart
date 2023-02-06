// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:the_series_db/routes/router.gr.dart';

class SeriesDetailsPage extends StatelessWidget {
  const SeriesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Series Details'),
          ElevatedButton(
            onPressed: () {
              //   context.router.push(
              //   const EpisodeHomeRouter(),
              // )

              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                // color is applied to main screen when modal bottom screen is displayed
                barrierColor: Colors.greenAccent,
                //background color for modal bottom screen
                backgroundColor: Colors.yellow,
                //elevates modal bottom screen
                elevation: 10,
                // gives rounded corner to modal bottom screen
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                builder: (BuildContext context) {
                  // UDE : SizedBox instead of Container for whitespaces
                  return FractionallySizedBox(
                    heightFactor: 0.9,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text('Show episode details'),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text('go ahead'),
          ),
        ],
      ),
    );
  }
}
