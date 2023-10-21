import 'package:flutter/material.dart';
import 'package:news_sun_c9/data/modal/category_dm.dart';
import 'package:news_sun_c9/ui/screens/home/tabs/categories/category_widget.dart';

class CategoriesTab extends StatelessWidget {
  final Function (CategoryDM) onCategoryClicked;
   const CategoriesTab(this.onCategoryClicked,{super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Pick your category"),
        SizedBox(height: 24,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                itemCount: CategoryDM.categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.1),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      onCategoryClicked(CategoryDM.categories[index]);
                    },
                    child: CategoryWidget(
                      categoryDM: CategoryDM.categories[index],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
