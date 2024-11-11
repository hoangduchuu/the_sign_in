import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvitePreferencesSection extends StatefulWidget {
  const InvitePreferencesSection({super.key});

  @override
  State<InvitePreferencesSection> createState() => _InvitePreferencesSectionState();
}

class _InvitePreferencesSectionState extends State<InvitePreferencesSection> {
  final Map<String, bool> preferences = {
    'Coffee': false,
    'Drinks': false,
    'Dinner': false,
    'Travel': false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF000000).withOpacity(0.25),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: preferences.entries.map((entry) {
          return Column(
            children: [
              Container(
                height: 44.h,
                padding: EdgeInsets.only(left: 20.w, right: 8.w), // Fixed padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      entry.key,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.5,
                      child: MediaQuery.removePadding(
                        context: context,
                        child: CupertinoSwitch(
                          value: entry.value,
                          onChanged: (bool value) {
                            setState(() {
                              preferences[entry.key] = value;
                            });
                          },
                          activeColor: const Color(0xFFACACAC),
                          trackColor: Colors.white.withOpacity(0.15),
                          thumbColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (entry.key != preferences.keys.last)
                Container(
                  height: 2,
                  margin: EdgeInsets.zero,
                  color: Colors.white.withOpacity(0.1),
                ),
            ],
          );
        }).toList(),
      ),
    );
  }
}