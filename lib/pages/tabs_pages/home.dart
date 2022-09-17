import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: Text(
          'home',
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
            fontFamily: 'Cairo-Bold',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 5,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Color(0xFFFF6464),
                        ),
                        hintText: 'ابحث هنا',
                        helperStyle: TextStyle(
                          color: Color(0xFFD4D4D4),
                          fontSize: 16,
                          fontFamily: 'Cairo-Regular',
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xFFE1E1E1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xFFE1E1E1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RawMaterialButton(
                    onPressed: () {},
                    fillColor: secondaryColorWithNoAlpha,
                    padding: const EdgeInsets.all(12.0),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.34),
                  BlendMode.dst,
                ),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/slider.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'الاقسام',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Cairo-Bold',
                  ),
                ),
                Text(
                  'عرض الكل',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontFamily: 'Cairo-Regular',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.16),
                            offset: const Offset(
                                0, 3), // changes position of shadow
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage('assets/images/category.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              'استراحات',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                                fontFamily: 'Cairo-SemiBold',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'أماكن قريبة منك',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cairo-Bold',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Stack(
              children: [
                Positioned(child: )
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.34),
                      BlendMode.dst,
                    ),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/slider.png'),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'اسم تجريبي',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
