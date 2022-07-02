import 'package:evy_internship/data/models/history_entity.dart';

class MockData{
  static List<HistoryEntity> data = [
    HistoryEntity(
      id: 'TXCN123456', 
      place: 'Arihant Food Plaza Charging System',
      status: 'Charging',),
      HistoryEntity(
      id: 'TXCN123456', 
      place: 'Arihant Food Plaza Charging System', 
      status: 'Pending',),
      HistoryEntity(
      id: 'TXCN123456', 
      place: 'Arihant Food Plaza Charging System', 
      date: '6:00 PM, NOV 29',
      status: 'Completed',),
      HistoryEntity(
      id: 'TXCN123456', 
      date: '6:00 PM, NOV 29',
      place: 'Arihant Food Plaza Charging System', 
      status: 'Invalid',),
      HistoryEntity(
      id: 'TXCN123456', 
      place: 'Arihant Charging System', 
      status: 'Completed',),
      HistoryEntity(
      id: 'TXCN123456', 
      place: 'Arihant Charging System', 
      status: 'Charging',),
      HistoryEntity(
      id: 'TXCN123456', 
      place: 'Arihant Charging System', 
      status: 'Charging',),
  ];

}