import ‘package:flutter/material.dart’;

void main() {
runApp(const AiSellerApp());
}

class AiSellerApp extends StatelessWidget {
const AiSellerApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: ‘AI Seller’,
theme: ThemeData(
useMaterial3: true,
colorScheme: ColorScheme.fromSeed(
seedColor: const Color(0xFF6655E8),
),
scaffoldBackgroundColor: const Color(0xFFF7F7FC),
),
home: const HomePage(),
);
}
}

class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
‘AI Seller’,
style: TextStyle(fontWeight: FontWeight.bold),
),
centerTitle: false,
backgroundColor: Colors.white,
),
body: ListView(
padding: const EdgeInsets.all(20),
children: [
Container(
padding: const EdgeInsets.all(24),
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [Color(0xFF6655E8), Color(0xFF9685FF)],
),
borderRadius: BorderRadius.circular(24),
),
child: const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Icon(Icons.auto_awesome, color: Colors.white, size: 38),
SizedBox(height: 16),
Text(
‘Продавай больше с AI’,
style: TextStyle(
color: Colors.white,
fontSize: 25,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 8),
Text(
‘Создавай привлекательные карточки товаров за минуты.’,
style: TextStyle(color: Colors.white, fontSize: 15),
),
],
),
),
const SizedBox(height: 28),
const Text(
‘Что будем создавать?’,
style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
),
const SizedBox(height: 16),
_FeatureCard(
icon: Icons.camera_alt_outlined,
title: ‘Анализ фото товара’,
subtitle: ‘Опиши товар по фотографии’,
onTap: () => _showMessage(context, ‘Анализ фото’),
),
_FeatureCard(
icon: Icons.edit_note,
title: ‘Название и описание’,
subtitle: ‘Подготовь текст для продажи’,
onTap: () => _showMessage(context, ‘Название и описание’),
),
_FeatureCard(
icon: Icons.storefront_outlined,
title: ‘Карточка маркетплейса’,
subtitle: ‘Подготовь товар к публикации’,
onTap: () => _showMessage(context, ‘Карточка маркетплейса’),
),
_FeatureCard(
icon: Icons.share_outlined,
title: ‘Текст для соцсетей’,
subtitle: ‘Instagram, TikTok и объявления’,
onTap: () => _showMessage(context, ‘Текст для соцсетей’),
),
const SizedBox(height: 20),
const Center(
child: Text(
‘AI Seller • Твой помощник в продажах’,
style: TextStyle(color: Colors.grey, fontSize: 12),
),
),
],
),
);
}

static void _showMessage(BuildContext context, String feature) {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text(’$feature — скоро будет доступно’)),
);
}
}

class _FeatureCard extends StatelessWidget {
final IconData icon;
final String title;
final String subtitle;
final VoidCallback onTap;

const _FeatureCard({
required this.icon,
required this.title,
required this.subtitle,
required this.onTap,
});

@override
Widget build(BuildContext context) {
return Card(
color: Colors.white,
margin: const EdgeInsets.only(bottom: 12),
elevation: 0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
side: const BorderSide(color: Color(0xFFEAE8F4)),
),
child: ListTile(
contentPadding: const EdgeInsets.all(12),
leading: CircleAvatar(
backgroundColor: const Color(0xFFEDE9FF),
child: Icon(icon, color: const Color(0xFF6655E8)),
),
title: Text(
title,
style: const TextStyle(fontWeight: FontWeight.bold),
),
subtitle: Text(subtitle),
trailing: const Icon(Icons.chevron_right),
onTap: onTap,
),
);
}
}
