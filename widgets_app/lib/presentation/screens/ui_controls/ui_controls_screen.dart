import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const new();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioGroup<Transportation>(
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = value ?? selectedTransportation;
              }),
              child: Column(
                children: [
                  RadioListTile<Transportation>(
                    title: const Text('By Car'),
                    subtitle: const Text('Subtitle By car'),
                    value: Transportation.car,
                    onChanged: (value) => setState(() {
                      selectedTransportation = value ?? selectedTransportation;
                    }),
                  ),
                  RadioListTile<Transportation>(
                    title: const Text('By boat'),
                    subtitle: const Text('Subtitle By boat'),
                    value: Transportation.boat,
                    onChanged: (value) => setState(() {
                      selectedTransportation = value ?? selectedTransportation;
                    }),
                  ),
                  RadioListTile<Transportation>(
                    title: const Text('By submarine'),
                    subtitle: const Text('Subtitle By submarine'),
                    value: Transportation.submarine,
                    onChanged: (value) => setState(() {
                      selectedTransportation = value ?? selectedTransportation;
                    }),
                  ),
                  RadioListTile<Transportation>(
                    title: const Text('By plane'),
                    subtitle: const Text('Subtitle By plane'),
                    value: Transportation.plane,
                    onChanged: (value) => setState(() {
                      selectedTransportation = value ?? selectedTransportation;
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Wants Breakfast'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Wants Lunch'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Wants Dinner'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
