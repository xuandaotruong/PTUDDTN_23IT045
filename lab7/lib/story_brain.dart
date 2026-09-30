import 'story.dart';

class StoryBrain {
  List _storyData = [
    Story(
        storyTitle:
            'Xe máy của bạn bỗng thủng săm giữa đèo vắng lúc tối mịt, hoàn toàn không có sóng điện thoại. Bạn định đứng chờ xe ôm thì một chiếc xe số cũ rích tạt vào. Một gã đội mũ bảo hiểm kín mít, đeo kính râm đen kịt giữa đêm cất giọng lạnh tanh: "Có muốn đi nhờ một đoạn không thanh niên?".',
        choice1: 'Lên xe luôn, cảm ơn bác tài cứu đói!',
        choice2: 'Hỏi gã xem có phải cướp không cho chắc ăn.'),
    Story(
        storyTitle: 'Gã gật đầu cười khẩy, tỏ ra cực kỳ thoải mái và không hề chối định dạng: "Đúng rồi đấy, lên xe không thì bảo?".',
        choice1: 'Thôi, thà đi với cướp còn hơn dắt bộ giữa đèo. Lên xe!',
        choice2: 'Thôi khỏi, thà tự bộ hành hoặc dắt xe còn hơn.'),
    Story(
        storyTitle:
            'Vừa chạy xe, gã vừa lầm bầm phàn nàn về việc người yêu cũ bỏ đi lấy chồng giàu. Gã càng nói càng tức giận phóng tốc độ cao vút. Gã bảo bạn với tay mở cốp xe xem có gì vui không. Bên trong cốp có một con dao dính máu, ba chiếc điện thoại vỡ màn hình và một đĩa CD nhạc chế. Gã bất ngờ với tay về phía cốp.',
        choice1: 'Tôi cực mê nhạc chế! Rút đĩa CD ra đưa cho gã.',
        choice2: 'Đằng nào cũng chết! Chộp lấy con dao trong cốp đâm gã luôn.'),
    Story(
        storyTitle:
            'Bạn lúi húi định tự vá xe giữa đêm thâm cốc, kết quả là bị đàn muỗi rừng tấn công tơi tả rồi bị chó đuổi chạy mất dép. Đúng là khôn ngoan không bằng may mắn!',
        choice1: 'Chơi lại',
        choice2: ''),
    Story(
        storyTitle:
            'Xe chao đảo rồi lao thẳng xuống vực sâu thăm thẳm. Trong giây phút cuối cùng, bạn chợt nhận ra việc đâm người đang cầm lái chiếc xe mà mình ngồi bên trong là một ý tưởng hết sức ngớ ngẩn.',
        choice1: 'Chơi lại',
        choice2: ''),
    Story(
        storyTitle:
            'Hai anh em cao hứng hòa giọng hát vang bài "Mắt nai cha cha cha" xuyên màn đêm. Gã thả bạn xuống đầu thị trấn an toàn và trước khi đi còn thân thiện hỏi: "Mà em có biết chỗ nào vắng vẻ để... à nhầm, câu cá đêm không?". Bạn hồn nhiên đáp: "Ra bờ hồ đi bác!".',
        choice1: 'Chơi lại',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}