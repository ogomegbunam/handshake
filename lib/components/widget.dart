// import 'package:flutter/material.dart';
// import 'package:csc_picker/csc_picker.dart';
// import 'package:handshake/constants.dart';
// class SelectCountry extends StatefulWidget {
//   const SelectCountry({Key? key}) : super(key: key);
//
//   @override
//   _SelectCountryState createState() => _SelectCountryState();
// }
//
// class _SelectCountryState extends State<SelectCountry> {
//   TextEditingController locationController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             child: TextFormField(
//               cursorColor: kblue,
//               controller:locationController,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               decoration: InputDecoration(
//                 hintText: "Enter Your Location",
//                 fillColor: inputColor,
//                 filled: true,
//                 contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                     borderSide: BorderSide(width: 0, style: BorderStyle.none)),
//               ),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Field cannot be empty.';
//                 }
//                 return null;
//               },
//               onTap: () {
//                 showCountryPicker(
//                   context: context,
//                   countryListTheme: CountryListThemeData(
//                     flagSize: 25,
//                     backgroundColor: Colors.white,
//
//                     textStyle: TextStyle(fontSize: 16, color: Colors.blueGrey),
//                     //Optional. Sets the border radius for the bottomsheet.
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20.0),
//                       topRight: Radius.circular(20.0),
//                     ),
//
//                     //Optional. Styles the search field.
//                     inputDecoration: InputDecoration(
//                       labelText: 'Search',
//                       labelStyle: TextStyle(color: kactive),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: kactive),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       hintText: 'Start typing to search',
//                       prefixIcon: const Icon(
//                         Icons.search,
//                         color: kactive,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                     ),
//                   ),
//                   onSelect: (Country country) {
//                     // print('Select country: ${country.displayName}');
//                     setState(() {
//                       controller.text =
//                           country.displayNameNoCountryCode.split(" ").first;
//                     });
//                   },
//                 );
//               },
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//     );
//   }
//
//   void showCountryPicker({BuildContext context, countryListTheme, Null Function(country) onSelect}) {}
// }
//
