import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/common/constants/data.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Destination extends StatefulWidget {
  @override
  _DestinationState createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  final TextEditingController _typeAheadController1 = TextEditingController();
  final focus = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _typeAheadController1.dispose();
  }

  void search_place1() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: kWhite,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          top: displaySize(context).height * 0.06,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: kGrey500,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey100,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                left: displaySize(context).width * 0.02,
                right: displaySize(context).width * 0.02,
              ),
              child: TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "City",
                  ),
                  // 2 controller khac nhau
                  controller: this._typeAheadController1,
                ),
                suggestionsCallback: (pattern) {
                  return CitiesService.getSuggestions(pattern);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                transitionBuilder: (context, suggestionBox, controller) {
                  return suggestionBox;
                },
                onSuggestionSelected: (suggestion) {
                  this._typeAheadController1.text = suggestion;
                  setState(() {
                    FileSystemManager.instance.chosen1 = true;
                    FileSystemManager.instance.typeAheadController1 =
                        this._typeAheadController1.text;
                  });
                  Navigator.pop(context);
                },
                validator: (value) =>
                    value.isEmpty ? 'Please select a city?' : null,
                onSaved: (value) => FocusScope.of(context).requestFocus(focus),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FileSystemManager.instance.chosen1 = false;
        search_place1();
      },
      child: FileSystemManager.instance.chosen1 == false
          ? Text(
              AppLocalizations.of(context).translate('whereYouToGo?'),
              style: TextStyle(
                fontSize: 15,
                color: kGrey500,
              ),
            )
          : Text(
              FileSystemManager.instance.typeAheadController1.toString(),
              style: TextStyle(
                fontSize: 15,
                color: kGrey500,
              ),
            ),
    );
  }
}
