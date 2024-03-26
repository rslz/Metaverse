
import { HomePage } from './home/HomePage'
import { DiscoverPage } from './discover/DiscoverPage'
import { MessagePage } from './message/MessagePage'
import { MinePage } from './mine/MinePage'

@Entry
@Component
struct Index {
  @Provide currentPage: number = 0
  @State currentIndex: number = 0;

  build() {
    Column() {
      Tabs({
        index: this.currentIndex,
        barPosition: BarPosition.End
      }) {
        TabContent() {
          HomePage()
        }
        .tabBar(this.TabBuilder('首页', 0, $r('app.media.tab_home'), $r('app.media.tab_home_sel')))

        TabContent() {
          DiscoverPage()
        }
        .tabBar(this.TabBuilder('发现', 1, $r('app.media.tab_search'), $r('app.media.tab_search_sel')))

        TabContent() {
          MessagePage()
        }
        .tabBar(this.TabBuilder('信息', 2, $r('app.media.tab_like'), $r('app.media.tab_like_sel')))

        TabContent() {
          MinePage()
        }
        .tabBar(
          this.TabBuilder('我的', 3, $r('app.media.tab_mine'), $r('app.media.tab_mine_sel'))
        )
      }
      .barMode(BarMode.Fixed)
      .onChange((index: number) => {
        this.currentIndex = index;
      })
    }
  }

  @Builder TabBuilder(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
  }
}