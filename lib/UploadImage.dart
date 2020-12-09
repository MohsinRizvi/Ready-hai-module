import 'package:flutter/material.dart';

import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:nice_button/NiceButton.dart';

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  var firstColor = Color(0xff30bc68), secondColor = Color(0xff30bc68);

  int selectedRadioButton = 1;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadioButton = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      opacity: 0.5,
      progressIndicator: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.teal[300]),
      ),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 52),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Upload Image'),
            centerTitle: true,
            backgroundColor: Colors.teal[300],
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  NiceButton(
                    radius: 20,
                    padding: const EdgeInsets.all(5),
                    text: "Choose Image",
                    icon: Icons.cloud_upload,
                    gradientColors: [firstColor, secondColor],
                    onPressed: () {},
                    background: null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NiceButton(
                    radius: 20,
                    padding: const EdgeInsets.all(5),
                    text: "Capture Image",
                    icon: Icons.linked_camera,
                    gradientColors: [firstColor, secondColor],
                    onPressed: () {},
                    background: null,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RadioListTile(
                    groupValue: selectedRadioButton,
                    value: 1,
                    activeColor: Colors.teal[300],
                    title: Text("Order PickUp"),
                    onChanged: (val) {
                      setSelectedRadio(val);
                    },
                  ),
                  RadioListTile(
                    groupValue: selectedRadioButton,
                    value: 2,
                    activeColor: Colors.teal[300],
                    title: Text('Order Delivery'),
                    onChanged: (val) {
                      setSelectedRadio(val);
                    },
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                            ///address
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.2),
                                elevation: 0.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ListTile(
                                    title: TextFormField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(0.0),
                                                width: 2.0),
                                          ),
                                          labelText: 'Address',
                                          hintText: "Address",
                                          // icon:
                                          //     Icon(Icons.lock_outline),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "The address field cannot be empty";
                                        }
                                        return "REQUIRED";
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            ///
                            ///number
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.2),
                                elevation: 0.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ListTile(
                                    title: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(0.0),
                                                width: 2.0),
                                          ),
                                          labelText: 'Number',
                                          hintText: "0300-0000000",
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "The Number field cannot be empty";
                                        }
                                        return "REQUIRED";
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            /////
                          ]))),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      onPressed: () {},
                      color: Colors.teal[300],
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Text(
                        'Place Order',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
