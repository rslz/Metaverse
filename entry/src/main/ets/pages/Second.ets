import router from '@ohos.router';


@Entry
@Component
struct Second {
  @State message: string = 'Hello World 2'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text("Back")
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:30
        })
        .backgroundColor("#0D9FFB")
        .width("50%")
        .height("5%")
        .onClick(()=>{
          try {
            router.back()
            console.info("Succeeded in returning to the first page.")
          } catch (err) {
            console.error(`Failed to return to the first page.Code is ${err.code}, message is ${err.message}`)
          }
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}