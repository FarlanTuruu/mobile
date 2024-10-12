import 'package:coba3/app/modules/home/views/inputstock_view.dart';
import 'package:coba3/app/modules/home/views/members_view.dart';
import 'package:coba3/app/modules/home/views/inputmembers_view.dart';
import 'package:coba3/app/modules/home/views/membersedit_view.dart';
import 'package:coba3/app/modules/home/views/memberslist_view.dart';
import 'package:coba3/app/modules/home/views/stock_view.dart';
import 'package:coba3/app/modules/home/views/stockedit_view.dart';
import 'package:coba3/app/modules/home/views/stocklist_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Approutes.MEMBERS,
      page: () => MembersView(),
    ),
    GetPage(name: Approutes.INPUTM, page: () => InputMView()),
    GetPage(name: Approutes.MEMBERSLIST, page: () => MemberslistView()),
    GetPage(name: Approutes.MEMBERSEDIT, page: () => MemberseditView()),
    GetPage(name: Approutes.STOCK, page: () => StockView()),
    GetPage(name: Approutes.STOCKLIST, page: () => StockListView()),
    GetPage(name: Approutes.STOCKEDIT, page: () => StockEditView()),
    GetPage(name: Approutes.INPUTS, page: () => InputSView()),
  ];
}
