// import 'package:flutter/material.dart';
// import 'package:approachable_geek_project/models/user_profile.dart';
// import 'package:validators/validators.dart' as validator;
//
// class TextInputField extends StatelessWidget {
//   final String hintText;
//   final Function validator;
//   final Function onSaved;
//   final bool isEmail;
//
//   TextInputField({
//     this.hintText,
//     this.validator,
//     this.onSaved,
//     this.isEmail = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: hintText,
//           contentPadding: EdgeInsets.all(15.0),
//           border: InputBorder.none,
//           filled: true,
//           fillColor: Colors.grey[200],
//         ),
//         obscureText: isPassword ? true : false,
//         validator: validator,
//         onSaved: onSaved,
//         keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
//       ),
//     );
//   }
// }