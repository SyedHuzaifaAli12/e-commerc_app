import 'package:e_commerce/view/profile_screen/profile_screen.dart';
import 'package:e_commerce/widget/caleneder/calender_wdiget/utils.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../Provider/change_state.dart';
import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';

class RecentlyviewScreen extends StatefulWidget {
  const RecentlyviewScreen({super.key});

  @override
  State<RecentlyviewScreen> createState() => _RecentlyviewScreenState();
}

class _RecentlyviewScreenState extends State<RecentlyviewScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
// Function to show custom popup menu
  OverlayEntry? _overlayEntry;
  bool value = true;
  // Function to show custom overlay popup
  void _showCustomPopup(BuildContext context, Offset offset) {
    _overlayEntry = _createOverlayEntry(context, offset);
    Overlay.of(context).insert(_overlayEntry!);
  }

  // Function to create overlay
  OverlayEntry _createOverlayEntry(BuildContext context, Offset offset) {
    return OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque, // Detects taps outside the overlay
        onTap: () {
          // Close the overlay when tapped outside
          _overlayEntry?.remove();
          _overlayEntry = null;
        },
        child: Stack(
          children: [
            Positioned(
              left: offset.dx + 20, // Adjust X position
              top: offset.dy + 50, // Adjust Y position

              child: Material(
                color: Colors.transparent,
                child: CustomContainer(
                  height: 400,
                  width: 400,
                  boxShadow: BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: themeblackcolor.withOpacity(0.1)),
                  child: TableCalendar(
                    firstDay: kFirstDay,
                    lastDay: kLastDay,
                    focusedDay: _focusedDay,
                    calendarStyle: CalendarStyle(
                        // tableBorder: TableBorder(borderRadius: BorderRadius.circular(12)),
                        selectedDecoration: BoxDecoration(
                            border: Border.all(color: themegreycolor),
                            color: themebuttoncolor,
                            shape: BoxShape.circle)),
                    calendarFormat: _calendarFormat,
                    selectedDayPredicate: (day) {
                      // Use `selectedDayPredicate` to determine which day is currently selected.
                      // If this returns true, then `day` will be marked as selected.

                      // Using `isSameDay` is recommended to disregard
                      // the time-part of compared DateTime objects.s
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(_selectedDay, selectedDay)) {
                        // Call `setState()` when updating the selected day
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      }
                    },
                    onFormatChanged: (format) {
                      if (_calendarFormat != format) {
                        // Call `setState()` when updating calendar format
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      // No need to call `setState()` here
                      _focusedDay = focusedDay;
                    },
                  ),
                ),
              ),
              // child: GestureDetector(
              //     onTap: () {
              //       // Get the button position and size
              //       final RenderBox button =
              //           context.findRenderObject() as RenderBox;
              //       final offset = button.localToGlobal(Offset.zero);
              //       _showCustomPopup(context, offset); // Show custom popup
              //     },
              //     child: CircleAvatar()),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.sizeOf(context);
    return Scaffold(
    
      appBar: AppBar(
        surfaceTintColor: themewhitecolor,
        automaticallyImplyLeading: false,
        title: const CustomText(
          text: "Recently Viewed",
          fontWeight: FontWeight.w700,
          fontSize: 34,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Consumer<ChangeStateVariables>(
              builder: (context, newValue, child) {
                return GestureDetector(
                  onTap: () {
                    Provider.of<ChangeStateVariables>(context, listen: false)
                        .setPassword();
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                              children: List.generate(
                            2,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustomContainer(
                                  padding: EdgeInsets.zero,
                                  height: 35,
                                  width: size.width*36/100,
                                  borderRadius: BorderRadius.circular(25),
                                  color: index == 0
                                      ? themebackgroundcolor
                                      : themelightgreycolor,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomText(
                                        text:
                                            index == 0 ? "Today" : "Yesturday",
                                        fontSize: 16,
                                        color: index == 0
                                            ? themebuttoncolor
                                            : themeblackcolor,
                                      ),
                                      index == 0
                                          ? const Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Icon(
                                                  Icons.check_circle,
                                                  size: 30,
                                                  color: themebuttoncolor,
                                                ),
                                              ))
                                          : const SizedBox(),
                                    ],
                                  )),
                            ),
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Get the button position and size
                              final RenderBox button =
                                  context.findRenderObject() as RenderBox;
                              final offset = button.localToGlobal(Offset.zero);
                              _showCustomPopup(
                                  context, offset); // Show custom popup
                              // Provider.of<ChangeStateVariables>(context,
                              //         listen: false)
                              //     .setPassword();
                            },
                            child: const CircleAvatar(
                              backgroundColor: themebuttoncolor,
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: themewhitecolor,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      justForYou(),
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
