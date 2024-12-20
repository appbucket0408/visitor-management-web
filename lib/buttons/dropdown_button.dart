import 'package:flutter/material.dart';

import '../const/textStyle.dart';
import '../models/json_model.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({
    super.key,
  });
  @override
  State<DropDownButton> createState() {
    return DropDownButtonState();
  }
}

class DropDownButtonState extends State<DropDownButton> {
  Society? society;
  Block? selectedBlock;
  Tower? selectedTower;
  Flat? selectedFlat;

  @override
  void initState() {
    super.initState();
    // Example of initializing society, replace with actual data fetching logic
    society = parseJsonData();
    // Assuming Society constructor takes a list of blocks
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              width: 150, child: Text('Choose block', style: TextStyles.bold)),
          DropdownButton<Block>(
              value: selectedBlock,
              hint: const Text("Select Block"),
              onChanged: (value) {
                setState(() {
                  selectedBlock = value;
                });
              },
              items: society!.blocks.map((Block block) {
                return DropdownMenuItem<Block>(
                  value: block,
                  child: Text(block.blockId),
                );
              }).toList()),
        ],
      ),
      if (selectedBlock != null)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
                width: 150,
                child: Text('Choose Tower', style: TextStyles.bold)),
            DropdownButton<Tower>(
                hint: const Text("Select Tower"),
                value: selectedTower,
                onChanged: (value) {
                  setState(() {
                    selectedTower = value;
                  });
                },
                items: selectedBlock!.towers.map((Tower tower) {
                  return DropdownMenuItem<Tower>(
                      value: tower, child: Text(tower.towerId));
                }).toList()),
          ],
        ),
      if (selectedTower != null)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
                width: 150, child: Text('Choose Flat', style: TextStyles.bold)),
            DropdownButton<Flat>(
                hint: const Text("Select Flat"),
                value: selectedFlat,
                onChanged: (value) {
                  setState(() {
                    selectedFlat = value;
                  });
                },
                items: selectedTower!.flats.map((Flat flat) {
                  return DropdownMenuItem<Flat>(
                      value: flat, child: Text(flat.flatId));
                }).toList())
          ],
        )
    ]);
  }
}
