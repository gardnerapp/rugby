import 'package:flutter/material.dart';

//TODO Refactor ROWS into PlayerDetails(title,info, color)
class PlayerInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20, right:15, top:15, bottom: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft:  Radius.circular(8.0),
              bottomRight:  Radius.circular(8.0),
              topRight:  Radius.circular(68.0),),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.1,1.1),
                  blurRadius: 10.0)]
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, left:16, right: 16),
              child: Row(
                children: <Widget>[
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 4),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Colors.black87.withOpacity(.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(4.0))
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, bottom: 2),
                                    child: Text(
                                      'Name',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        letterSpacing: -0.1,
                                        color: Colors.black87.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Padding(padding:
                                      const EdgeInsets.only(left: 4, bottom: 3),
                                        child: Text("Corey Gardner",
                                          //TODO refactor text style
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                              letterSpacing: 1.0
                                          ),),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.red.withOpacity(.5),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(4.0))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4, bottom: 2),
                                  child: Text(
                                    'Club',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing: -0.1,
                                      color: Colors.red.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(padding:
                                      const EdgeInsets.only(left: 4, bottom: 3),
                                      child: Text("ICRFC",
                                        //TODO refactor text style
                                        style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                          letterSpacing: 1.0
                                      ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(4.0))
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, bottom: 2),
                                    child: Text(
                                      'Position',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        letterSpacing: -0.1,
                                        color: Colors.blue.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Padding(padding:
                                      const EdgeInsets.only(left: 4, bottom: 3),
                                        child: Text("Lock",
                                          //TODO refactor text style
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                              letterSpacing: 1.0
                                          ),),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange.withOpacity(.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(4.0))
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, bottom: 2),
                                    child: Text(
                                      'Mates',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        letterSpacing: -0.1,
                                        color: Colors.deepOrange.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Padding(padding:
                                      const EdgeInsets.only(left: 4, bottom: 3),
                                        child: Text("50",
                                          //TODO refactor text style
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                              letterSpacing: 1.0
                                          ),),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                  Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Center(
                        child: Stack(overflow: Overflow.visible,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 105,
                            height: 105,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(.5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.0)
                              ),
                              border: new Border.all(
                                width: 4,
                                color: Colors.blue.withOpacity(.5)
                              ),
                            ),
                            child: Column( //pic
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                              ],
                            ),
                          ),
                          )
                        ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}