import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class allMenu extends StatelessWidget {
  const allMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // decoration: BoxDecoration(color: palYel),
      height: 300,
      margin: const EdgeInsets.only(top: 510),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our Menu : ', style: bold12.copyWith(fontSize: 20),),
          SizedBox(height: 5,),
          Container(
            width: 330,
            // margin: const EdgeInsets.only(left: 18),
            padding: const  EdgeInsets.all(10),
            decoration: BoxDecoration(color: Color.fromRGBO(163, 210, 87, 1), borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset('assets/images/mocca.png'),
                SizedBox(width: 11,),
                Container(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mocca', style: bold12.copyWith(fontSize: 18),),
                      Text('One scoop of mocca ice cream', style: bold12.copyWith(fontSize: 10),),
                      Spacer(),
                      Text('Rp 20.000', style: bold12.copyWith(fontSize: 18),),
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.add_circle_outline,
                  size: 28,
                )
              ],
            ),
          ),
          SizedBox(height: 11,),
          Container(
            // margin: const EdgeInsets.only(left: 18),
            width: 330,
            padding: const  EdgeInsets.all(10),
            decoration: BoxDecoration(color: Color.fromRGBO(163, 210, 87, 1), borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset('assets/images/mint-raisin.png'),
                SizedBox(width: 11,),
                Container(
                  width: 172,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mint Raisin', style: bold12.copyWith(fontSize: 18),),
                      Flexible(
                        child: Text('One scoop of mint-flavored ice cream with raisins inside', style: bold12.copyWith(fontSize: 10), softWrap: true,)
                      ),
                      // Text('One scoop of mint-flavored ice cream', style: bold12.copyWith(fontSize: 10)),
                      SizedBox(height: 5,),
                      Text('Rp 25.000', style: bold12.copyWith(fontSize: 18),),
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.add_circle_outline,
                  size: 28,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}