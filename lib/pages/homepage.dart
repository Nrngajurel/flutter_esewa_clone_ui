import 'package:flutter/material.dart';
import 'package:nrn_esewa_ui_clone/utils/colors.dart';
import 'package:nrn_esewa_ui_clone/widgets/nrn_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        // bottomNavigationBar: ,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            const _HomepageHeader(),

            NrnCard(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GridView.builder(
                  itemCount: 20,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Icon(Icons.phone_android, color: AppColor.primary),
                          SizedBox(height: 10),
                          Text("Topup",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[600],
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            const _ImageCard(
                imageUrl:
                    'https://cdn.esewa.com.np/ui/images/slider/6UfxhlOY7NyN8SoQuS1vdaraz-esewa-banner.jpg'),
            const _ImageCard(
                imageUrl:
                    'https://cdn.esewa.com.np/ui/images/slider/8NACJKbj7kV2E0rGQxhoisp%20OHO.jpg'),
            const _ImageCard(
                imageUrl:
                    'https://cdn.esewa.com.np/ui/images/slider/secZXqVeAzHW7oteK7Yjinternationl-flight-slider-10-25.jpg'),
            const _ImageCard(
                imageUrl:
                    'https://cdn.esewa.com.np/ui/images/slider/50zCFkFwz4pyF4THvQYkInsurance%20Cashback%20offer.jpg'),
// Popular service card
            NrnCard(
              title: "Popular Services",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RoundedCardItem();
                    },
                  ),
                ),
              ),
            ),
            // New service card
            NrnCard(
              title: "Popular Services",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RoundedCardItem();
                    },
                  ),
                ),
              ),
            ),

            // Government payment card
            NrnCard(
              title: "Government Payments",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RoundedCardItem();
                    },
                  ),
                ),
              ),
            ),
            // Utility Bills payment card
            NrnCard(
              title: "Popular Services",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RoundedCardItem();
                    },
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}

class RoundedCardItem extends StatelessWidget {
  const RoundedCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              border: Border.all(
                color: Color.fromARGB(255, 195, 195, 195),
                width: 1,
              ),
            ),
            child: Image.network(
              'https://cdn.esewa.com.np//ui/images/logos/merchants/8eorvC8KYI5Ie8lbu7GtRs%2050%20logo.jpg',
              height: 50,
              width: 50,
            ),
          ),
          SizedBox(height: 10),
          Text("Topup",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.grey[600],
              )),
        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final String imageUrl;
  const _ImageCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _HomepageHeader extends StatelessWidget {
  const _HomepageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Container(
            height: 225,
            decoration: const BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: AppColor.primary,
                ),
              ),
              Wrap(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_sharp,
                        size: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none,
                        size: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert,
                        size: 30, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 175,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 75,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 226, 226, 226),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.wallet_outlined,
                                  size: 35,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "NPR ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[600])),
                                    TextSpan(
                                        text: "1,00,000",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[600])),
                                  ])),
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey[600]),
                                  ),
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              color: Colors.grey[600],
                              onPressed: () {},
                              icon: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(Icons.remove_red_eye_sharp))),
                          Wrap(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('100.55',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[600])),
                                  Text(
                                    "Reward",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.monetization_on_outlined,
                                  size: 30,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var i = 0; i < 4; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.phone_android_outlined,
                                  color: AppColor.primary,
                                ),
                                Text("Load Money",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600])),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
