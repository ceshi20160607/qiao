import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qiao/entity/po/car_entity.dart';

import '../../../core/base/refresh.dart';
import 'car_logic.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  final logic = Get.find<CarLogic>();
  final state = Get.find<CarLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("列表"),
      ),
      body: buildRefreshListWidget<CarEntity, CarLogic>(
          itemBuilder: (item, index) {
        return _buildItem(item);
      }),
    );
  }

  Card _buildItem(CarEntity item) {
    return Card(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.carType == 1 ? "充值" : (item.carType == 2 ? "加油" : ""),
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            item.endKiloNumber.toString() ?? "",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black54),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            item.createTime.toString() ?? "",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        item.beforeOilNumber.toString() ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                // item.cover?.isNotEmpty == true
                //     ? Image.network(
                //         item.cover ?? "",
                //         width: 100,
                //         height: 65,
                //         fit: BoxFit.cover,
                //       )
                //     : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
