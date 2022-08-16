import 'package:flutter/material.dart';

class DefinitionScreen extends StatelessWidget {
  const DefinitionScreen({Key? key}) : super(key: key);

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
                    ''' يعد نجم سهيل من أكثر النجوم التي اهتم بها الناس منذ قديم الزمن في الجزيرة العربية، حيث إن شروقه بالأفق الجنوبي فجرًا يشير إلى بداية العد التنازلي لفصل الصيف بالمنطقة، ويتم رصد هذا النجم بالعين المجردة من جنوب الجزيرة العربية وحتى منتصفها في 24 أغسطس/ آب من كل عام.
              
              وقال رئيس “الجمعية الفلكية في جدة” المهندس ماجد أبو زاهرة بحسب “العربية نت”: إنه “من العلامات المتزامنة مع ظهور نجم سهيل تراجع زاوية سقوط أشعة الشمس، ويبدأ النهار يقصر تدريجيًّا ويبرد آخر الليل بشكل ملموس، وتبدأ الشمس تميل نحو الجنوب بعد أن كانت عمودية بداية فصل الصيف، لذلك كان العرب يستبشرون بطلوع هذا النجم”.
              
              وأضاف: “ينقسم نجم سهيل إلى أربعة منازل تبدأ بـ(الطرفة) ومدتها 13يومًا، وهي آخر نجوم الصيف، ويصبح معها الطقس لطيفًا ليلًا مع بقاء الحرارة في ساعات النهار، ثم (الجبهة) وتمتد لمدة 13 يومًا، وهي أول نجوم فصل الخريف ويبرد الليل فيها ويتحسن الطقس نهارًا، ثم (الزبرة) وتستمر لمدة 13 يومًا وفيها تزداد برودة الليل، ثم (الصرفة) وهي آخر نجوم سهيل، وتمتد لمدة 13 يومًا، وسميت بذلك لانصراف الحر عند طلوعها”.
              
              وشرح أبو زاهرة “أن نجم سهيل يبعد عن الكرة الأرضية مسافة 313 سنة ضوئية، وهو ألمع نجم ضمن مجموعة نجوم (كارينا) القاعدة الجنوبية، وثاني ألمع نجم في الليل بعد الشعرى اليمانية، ولو أن بُعده عنا كان مثل الشعرى اليمانية لفاقه في اللمعان”.
              
              يذكر أن نجم سهيل لا يوجد له تأثير على أحوال الطقس لا من قريب ولا من بعيد، مثل غيره من النجوم، وإنما هذا النجم مجرد علامة فقط، يتزامن ظهوره مع بداية التغير الفصلي والانتقال نحو الاعتدال الخريفي.''',
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
