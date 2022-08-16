import 'package:flutter/material.dart';

class ImportanceScreen extends StatelessWidget {
  const ImportanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text('What is Sohil Star')),
        body: ListView(
          shrinkWrap: true,
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            //     Image.network('https://www9.0zz0.com/2022/06/10/02/839721263.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''يعتبر نجم سهيل من أكثر النجوم التي يحرص العرب وغيرهم على متابعته وعلى وجه الخصوص في الجزيرة العربية، وله اهتمام خاص منذ القدم بظهوره. ففي مصر قديما كان يستدل عليه للإبحار إلى منارة فاروس التي كانت موجود في العصور القديمة في مدينة الإسكندرية، وكان بعض من يعيشون في الصحراء يسمون نجم سهيل بسفينة الصحراء. وكانت العرب تتغنى بنجم سهيل وتذكره في أشعارها، كما يقول أبو العلاء المعري (363 هـ - 449 هـ)، (973 -1057م):

«و (سهيل) كوَجْنَةِ الحِبِّ في اللَّون *** وقلبِ المحبِّ في الخفقانِ»

أما عن الحاضر فقد اتخذته وكالة الفضاء الإمريكية ناسا وسيلة من وسائل تحديد الملاحة الفضائية، حيث من خلال تحديد موقع نجم سهيل يتم تحديد ثم توجيه بعض السفن والمركبات الفضائية إلى مساراتها البعيدة عن الكون. وهو يعتبر ثاني أكبر نجم مضيء يمكن ان يرى بالعين المجردة وجد لحد الآن حيث ان النجم الأول هو الشعرى اليمانية أشد نجوم السماء سطوعا لنا على الأرض. ليس من السهولة رؤيته شمال خط عرض 37 درجة في نصف الكرة الأرضية الشمالي، فهو من نجوم النصف الجنوبي من السماء.

محور حركة المبادرة الأرضية سوف ينقل نجم سهيل ضمن حدود 10 درجات من القطب السماوي الجنوبي حولي العام 14000 م
الإرث الحديث:

يظهر سهيل على علم البرازيل، ويرمز إلى ولاية غوياس البرازيلية. وتم تسمية غواصتين تابعة للبحرية الأمريكية بأسم كانوبوس، الاولى خدمت من 1922 إلى 1942، والثانية من 1965 إلى 1994.
''',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
