import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/model/companies/companies_model.dart';

Widget defaultTextFormField(
        {String? hintText,
        bool obscureText = false,
        TextEditingController? textFormFieldController,
        TextInputType? keyboardType,
        String? Function(String?)? validator,
        IconData? suffixIcon,
        void Function()? suffixPressed,
        bool? isPassword,
          void Function()? onTap
        }) =>
    Container(
      decoration: BoxDecoration(
        color: const Color(0xffECECEC),
        borderRadius: BorderRadius.circular(6.dp),
        border: Border.all(
          color: const Color(0xffC4C4C4),
          width: 1.5,
        ),
      ),
      child: TextFormField(
        onTap: onTap,
        keyboardType: keyboardType,
        controller: textFormFieldController,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.dp),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color(0xff808080), fontSize: 15.dp),
          suffixIcon: suffixIcon != null ? IconButton(
            icon: Icon(suffixIcon),
            onPressed: suffixPressed,
          ) : null,
            // GestureDetector(
            //     onTap: () {
            //       LoginCubit.get(context)
            //           .changePasswordVisibility();
            //     },
            //     child: LoginCubit.get(context).isPassword
            //         ? Icon(Icons.visibility_outlined)
            //         : Icon(Icons.visibility_off_outlined))

        ),
        validator: validator,
      ),
    );

Widget mainElevatedButton({
  double width = 35,
  double height = 5,
  String text = '',
  final VoidCallback? onPressed,
  bool? loading,
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
                borderRadius:
                    BorderRadius.circular(5.dp), // Set the border radius
              ),
            ),
          ),
          onPressed: loading == true ? null : onPressed,
          child: loading == true
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.dp,
                      fontWeight: FontWeight.bold),
                )),
    );

Widget mainElevatedButtonWithBorder({
  double width = 40,
  double height = 5,
  String text = 'Open a test account',
  final VoidCallback? onPressed,
}) =>
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              side: const BorderSide(
                color: Color(0xff0095D0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.dp))),
          child: Text(
            text,
            style: TextStyle(
                color: const Color(0xff0095D0),
                fontSize: 12.dp,
                fontWeight: FontWeight.bold),
          )),
    );

PreferredSizeWidget? reusableAppBar({
  required BuildContext context,
  String text = '',
}) =>
    AppBar(
      backgroundColor: Colors.white,
      // forceMaterialTransparency: true,
      leadingWidth: 60.w,
      leading: InkWell(
        onTap: () {
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


class startDateTextFormField extends StatefulWidget {
  const startDateTextFormField({super.key});

  @override
  State<startDateTextFormField> createState() => _startDateTextFormFieldState();
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
      builder: (context, child) {
        return Theme(
            data: ThemeData.light().copyWith(
                colorScheme:
                    const ColorScheme.light(primary: Color(0xff0095D0))),
            child: child!);
      },
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
  State<endDateTextFormField> createState() => _endDateTextFormFieldState();
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
      builder: (context, child) {
        return Theme(
            data: ThemeData.light().copyWith(
                colorScheme:
                    const ColorScheme.light(primary: Color(0xff0095D0))),
            child: child!);
      },
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


class BrokerDropDown extends StatelessWidget {
  int? brokerDropDown;
  final ValueChanged<int?> onBrokerChanged;
  bool? required;
  BrokerDropDown(
      {super.key,
        required this.brokerDropDown,
        required this.onBrokerChanged,
        this.required});

  @override
  Widget build(BuildContext context) {
    List<Companies> companies =
    companiesModel.companies!; // Assuming 'allCities' is the list of cities

    List<DropdownMenuItem<int>> dropdownItems = [
      DropdownMenuItem(
        value: 0,
        child: Text('Choose Broker',
            style: TextStyle(color: const Color(0xff808080), fontSize: 15.dp)),
      )
    ];

    for (Companies company in companies) {
      DropdownMenuItem<int> dropdownItem = DropdownMenuItem<int>(
        value: company.id,
        child: SizedBox(
          child: Text(
            '${company.title}',
            style: TextStyle(color: const Color(0xff767676), fontSize: 15.dp),
          ),
        ),
      );
      dropdownItems.add(dropdownItem);
    }

    return DropdownButtonFormField<int>(
      validator: required == false
          ? null
          : (value) {
        if (value == 0) {
          return 'Please select a broker ';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Color(0xffECECEC),
        filled: true,
        errorStyle: TextStyle(
          fontSize: 8.sp,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.dp),
            borderSide: const BorderSide(color: Color(0xffC4C4C4), width: 1.5)),
      ),
      value: brokerDropDown,
      items: dropdownItems,
      onChanged: (val) {
        onBrokerChanged(val);
        brokerDropDown = val;
      },
    );
  }
}
