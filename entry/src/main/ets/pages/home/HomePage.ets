

@Entry
@Component
export struct HomePage {
  @State message: string = 'HomePage'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text("Next")
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:20
        })
        .backgroundColor("#0D9FFB")
        .width("50%")
        .height("5%")
        .onClick(()=>{
          console.info("Succeeded in clicking the 'Next' button.")
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}