import 'package:ecommerce/data/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/dataprovider.dart';
import '../../../utils/colors/colors.dart';
import '../../Details_Page/details_page.dart';

class ItemContainerSeeAllWidget extends StatelessWidget {
  const ItemContainerSeeAllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<DataProvider>(
      builder: (context, dataProvider, _) {
        return SizedBox(
          width: width,
          height: height,
          child: GridView.builder(
            itemCount: dataProvider.eCommerceDataList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.4),
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
            ),
            itemBuilder: (context, index) {
              ECommerceData eCommerceModel = dataProvider.eCommerceDataList[index];
              return GestureDetector(
                onTap: () {
                  //NAVIGATE TO THE DETAILS PAGE
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailsPage(ecommerceModel: eCommerceModel,

                      ),
                    ),
                  );
                },
                child: SizedBox(
                  width: width * 0.2,
                  height: height * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.5,
                        height: height * 0.19,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20.0,
                            ),
                          ),
                          child: Image.network(
                            eCommerceModel.image,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                       Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          maxLines : 2,
                          softWrap : true,
                          eCommerceModel.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          eCommerceModel.description,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: RichText(
                              text:  TextSpan(
                                children: [
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "${eCommerceModel.rating.rate}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "₹ ${eCommerceModel.price}",
                                style: TextStyle(
                                  color: primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
