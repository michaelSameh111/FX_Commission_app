import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

Widget defaultTextFormField(
        {String? hintText,
        bool obscureText = false,
        TextEditingController? textFormFieldController,
        TextInputType? keyboardType}) =>
    Container(
      decoration: BoxDecoration(
        color: const Color(0xffECECEC), // Set the background color
        borderRadius: BorderRadius.circular(6.dp), // Set the border radius
        border: Border.all(
          color: const Color(0xffC4C4C4), // Set the border color
          width: 1.5, // Set the border width
        ),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: textFormFieldController,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.dp),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle:
                TextStyle(color: const Color(0xff808080), fontSize: 15.dp)),
      ),
    );

Widget mainElevatedButton({
  double width = 35,
  double height = 5,
  String text = '',
  final VoidCallback? onPressed,
}) =>
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(const Color(0xff0095D0)),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Set the border radius
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 15.dp),
          )),
    );

PreferredSizeWidget? reusableAppBar({
  required BuildContext context,

  String text = '',
}) =>
    AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 60.w,
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios_new_rounded,
                color: const Color(0xff646363), size: 25.dp),
            SizedBox(
              width: 2.w,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18.dp),
            ),
          ],
        ),
      ),
      centerTitle: true,
    );

Widget containerBelowAppBar({
  String text = '',
}) =>
    Container(
      width: double.infinity,
      height: 12.h,
      padding: EdgeInsets.symmetric(vertical: 22.dp, horizontal: 4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.dp),
            bottomLeft: Radius.circular(20.dp)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.dp,
              color: const Color(0xff0379A8)),
        ),
      ),
    );

Widget addedAccountTradingAccountScreen({
  String image = '',
  String brokerName = '',
  String accountNumber = '',
  String accountStatus = '',
}) =>
    Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8.dp),
            child: Image(image: AssetImage(image))),
        SizedBox(
          width: 3.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Broker : ',
                  style: TextStyle(fontSize: 14.dp),
                ),
                Text(
                  brokerName,
                  style: TextStyle(fontSize: 14.dp, color: Color(0xff808080)),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Account Number : ',
                  style: TextStyle(fontSize: 14.dp),
                ),
                Text(
                  accountNumber,
                  style: TextStyle(fontSize: 14.dp, color: Color(0xff808080)),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Account Status : ',
                  style: TextStyle(fontSize: 14.dp),
                ),
                Text(
                  accountStatus,
                  style: TextStyle(fontSize: 14.dp, color: Colors.red),
                )
              ],
            ),
          ],
        )
      ],
    );



class startDateTextFormField extends StatefulWidget {
  const startDateTextFormField({super.key});

  @override
  State<startDateTextFormField> createState() =>
      _startDateTextFormFieldState();
}
class _startDateTextFormFieldState extends State<startDateTextFormField> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _startDateController = TextEditingController();

  @override
  void dispose() {
    _startDateController.dispose();
    super.dispose();
  }

  Future<void> _selectStartDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2024),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        controller.text = selectedDate.toLocal().toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      decoration: BoxDecoration(
        color: const Color(0xffECECEC), // Set the background color
        borderRadius: BorderRadius.circular(6.dp), // Set the border radius
        border: Border.all(
          color: const Color(0xffC4C4C4), // Set the border color
          width: 1.5, // Set the border width
        ),
      ),
      child: TextFormField(
        onTap: () {
          _selectStartDate(context, _startDateController);
        },
        readOnly: true,
        keyboardType: TextInputType.datetime,
        controller: _startDateController,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                _selectStartDate(context, _startDateController);
              },
            ),
            contentPadding: EdgeInsets.all(12.dp),
            border: InputBorder.none,
            hintText: 'start date',
            hintStyle:
                TextStyle(color: const Color(0xff808080), fontSize: 15.dp)),
      ),
    );
  }
}



class endDateTextFormField extends StatefulWidget {
  const endDateTextFormField({super.key});

  @override
  State<endDateTextFormField> createState() =>
      _endDateTextFormFieldState();
}
class _endDateTextFormFieldState extends State<endDateTextFormField> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _endDateController = TextEditingController();

  @override
  void dispose() {
    _endDateController.dispose();
    super.dispose();
  }

  Future<void> _selectEndDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2024),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        controller.text = selectedDate.toLocal().toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      decoration: BoxDecoration(
        color: const Color(0xffECECEC), // Set the background color
        borderRadius: BorderRadius.circular(6.dp), // Set the border radius
        border: Border.all(
          color: const Color(0xffC4C4C4), // Set the border color
          width: 1.5, // Set the border width
        ),
      ),
      child: TextFormField(
        onTap: () {
          _selectEndDate(context, _endDateController);
        },
        readOnly: true,
        keyboardType: TextInputType.datetime,
        controller: _endDateController,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                _selectEndDate(context, _endDateController);
              },
            ),
            contentPadding: EdgeInsets.all(12.dp),
            border: InputBorder.none,
            hintText: 'end date',
            hintStyle:
            TextStyle(color: const Color(0xff808080), fontSize: 15.dp)),
      ),
    );
  }
}





