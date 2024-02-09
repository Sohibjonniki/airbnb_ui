import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 15),
                child: Column(
                  children: [
                    Row(children: [
                      InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: Container(
                          child: Center(child: Icon(Icons.arrow_back,color: Colors.black,)),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              height: 330,
              width: double.infinity,
                decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image:AssetImage("assets/fon.jpg"),
                                fit: BoxFit.fill)),

            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Linneaholmen:Private island",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  const Text(
                    'Island in Ytteran,Sweden',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  const Text(
                    '10 guest 6 bedrooms 8 beds',
                  ),
                  SizedBox(height: 10,),
                  const Row(
                    children: [Icon(Icons.star), SizedBox(width: 10,), Text('483 rewiev')],
                  ),
                  SizedBox(height: 10,),
                  const Divider(),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://a0.muscache.com/im/pictures/user/90f336d9-a856-4622-afa1-3bb0fb036d9a.jpg?im_w=240'),
                    ),
                    title: Text('elshod by jambul'),
                    subtitle: Text(
                      '5 year hosting',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.account_balance_sharp),
                    title: const Text('Stay with Roberta'),
                    subtitle: const Text(
                      'Superhost • 10 years hosting',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled),
                    title: const Text('Stay with Roberta'),
                    subtitle: const Text(
                      'Superhost • 10 years hosting',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                 
                 
                  const Divider(),
                  SizedBox(height: 10,),
                  const Text('Some info has been automatically translated.'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Show original',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                        '''Welcome to linnestlik  Hills, lies a luxurious and comfortable haven that embodies the epitome of opulence - Noah's Ark. Inspired by the biblical tale of Noah's Ark, this remarkable property boasts a breathtaking location that offers awe-inspiring views, making it the ideal getaway for those yearning to escape the hustle and bustle of city life!'''),
                  ),
                  SizedBox(height: 10,),
                  const Divider(),
                  SizedBox(height: 10,),
                  const Text(
                    "Where you'll sleep",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.bedroom_child, size: 45),
                  SizedBox(height: 10,),
                        Text('Bedroom'),
                        Text(
                          '1 queen bed',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Divider(),
                  SizedBox(height: 10,),
                  const Text(
                    "What this place offers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.photo_size_select_actual_rounded),
                                        SizedBox(width: 10,),
                      Text('Lake wiev'),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.card_giftcard_rounded),
                                        SizedBox(width: 10,),
                      Text('Mountain wiev'),
                    ],
                  ),
                  
                                        SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.soup_kitchen_outlined),
                                        SizedBox(width: 10,),
                      Text('Kitchen'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.wifi),
                                        SizedBox(width: 10,),
                      Text('Wifi'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.car_crash_outlined),
                                        SizedBox(width: 10,),
                      Text('Free parking on permises'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.closed_caption_disabled_rounded),
                                        SizedBox(width: 10,),
                      Text(
                        'security cameras',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.smoke_free),
                                        SizedBox(width: 20,),
                      Text(
                        'Smoke alarm',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(18.0),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  color: Colors.black, width: 1))),
                      child: const Center(
                        child: Text(
                          'Show all 51 amenities',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                  SizedBox(height: 10,),
                  const Divider(),
                  SizedBox(height: 10,),
                  const Text(
                    "Where you'll be",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
            
                    child: Container(
                                            height: 200,
                                            width: 400,

                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://static1.anpoimages.com/wordpress/wp-content/uploads/2022/07/googleMapsTricksHero.jpg"),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text('Yttern,Jamtlands lan,Sweden',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                        ''' It’s a great location. Peaceful & serene.The staff present at the property (depak) is great and would arrange for all your needs and is a superb cook'''),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Show more',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                  SizedBox(height: 10,),
                        Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Divider(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      const Icon(Icons.star),
                                        SizedBox(width: 10,),
                      Text('4.91 • 295 reviews',
                          style: TextStyle(
                              fontSize: 20,
                              )),
                  SizedBox(height: 10,),
                    ],
                  ),
                  SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('★★★★★★ 2 weeks ago',
                                        style: TextStyle(
                                                )),
                  SizedBox(height: 2,),
                                    SizedBox(
                                      width: 200,
                                      child: const Text(
                                        'An aipur also referred to as the Pink City, is surrounded by Aravalli Hills and is famous for its heritage and fascinating monuments. Traditional hand-loom garments, flamboyant markets, and wonderfully laid-out gardens are just a few things to look forward to in this beautiful city',
                                        maxLines: 4,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                  SizedBox(height: 2,),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        'Show more',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    
                  SizedBox(height: 2,),
                                  ],
                                ),
                              ),
                            );
                          })),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(18.0),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  color: Colors.black, width: 1))),
                      child: const Center(
                        child: Text(
                          'Show all 61 amenities',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                  SizedBox(height: 20,),
                  const Divider(),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width:200,
                        child: const Text(
                          "bit ikki uch ",
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://a0.muscache.com/im/Portrait/Avatars/messaging/b3e03835-ade9-4eb7-a0bb-2466ab9a534d.jpg?im_policy=medq_w_text&im_t=R&im_w=240&im_f=airbnb-cereal-medium.ttf&im_c=ffffff'),
                          ),
                       
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 1,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: ListTile(
          title: const Row(
            children: [
              Text(
                '\$205 ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('night'),
            ],
          ),
          subtitle: const Text(
            'Sep 9-14',
            style: TextStyle(
                decoration: TextDecoration.underline, color: Colors.black),
          ),
          trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent.shade400,
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Reserve",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ),
      ),
    );
  }
}