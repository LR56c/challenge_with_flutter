import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CinemaDropdown extends HookConsumerWidget {
  CinemaDropdown(
      {super.key,
      required this.placeholder,
      required this.labels,
      required this.onLabelSelected});

  String placeholder;
  List<String> labels;
  final Function(String) onLabelSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: DropDownTextField(
        clearOption: true,
        dropDownItemCount: 4,
        enableSearch: true,
        textStyle: const TextStyle(color: Colors.white),
        textFieldDecoration: InputDecoration(
            hintText: placeholder,
            suffixIconColor: Colors.white,
            contentPadding: const EdgeInsets.all(16),
            border: InputBorder.none,
            prefixIcon: const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            )),
        dropDownList: [
          ...labels.map((e) => DropDownValueModel(name: e, value: e)),
        ],
        onChanged: (val) {
          onLabelSelected(val);
        },
      ),
    );
  }
}
