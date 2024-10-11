import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Color.fromARGB(255, 0, 41, 145),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 0.8],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            print("setting");
                          },
                          icon: const Icon(Icons.settings)),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue.shade500,
                        backgroundImage: const AssetImage(
                          'assets/profile.jpg',
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Fikri Ardiansyah',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                      ),
                      const Text(
                        'Faculty of Mathematics and Computer Science',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Informatics',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Angkatan 2021',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 12,
                    spreadRadius: 0,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: SfRadialGauge(
                            enableLoadingAnimation: true,
                            axes: [
                              RadialAxis(
                                pointers: const [
                                  RangePointer(
                                    value: 75,
                                    width: 10,
                                    cornerStyle: CornerStyle.bothCurve,
                                    gradient: SweepGradient(
                                      colors: [
                                        Color.fromARGB(255, 11, 5, 141),
                                        Color.fromARGB(255, 0, 3, 100),
                                      ],
                                      stops: [
                                        0.8,
                                        0.9,
                                      ],
                                    ),
                                  ),
                                ],
                                axisLineStyle: const AxisLineStyle(
                                  thickness: 0,
                                  color: Colors.transparent,
                                ),
                                annotations: const [
                                  GaugeAnnotation(
                                    widget: Text(
                                      '75%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                                startAngle: 90,
                                endAngle: 90,
                                showLabels: false,
                                showTicks: false,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Overall',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Text(
                          'Performance',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        buildBehaviorIndicator('Behavior', 0.80),
                        buildBehaviorIndicator('Exams', 0.70),
                        buildBehaviorIndicator('Task', 0.70),
                        buildBehaviorIndicator('Attendance', 0.80),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 12,
                    spreadRadius: 0,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        'NIIM :',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        ' 212225001',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Phone :',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        '+62 812 3345 0424',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Email :',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        ' arsyahns13@gmail.com',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Address :',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        ' Kebumen',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBehaviorIndicator(String label, double value) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 100,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 6,
            borderRadius: BorderRadius.circular(6),
            backgroundColor: Colors.grey.shade300,
            color: const Color(0xfff0f32da),
          ),
        ),
      ],
    );
  }
}
