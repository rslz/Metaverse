// PageTwo.ets
export class Pages {
  names: string = ""
  values: NavPathStack | null = null
}

@Builder
export function pageTwoTmp(info: Pages) {
  NavDestination() {
    Column() {
      Button('pushPathByName', { stateEffect: true, type: ButtonType.Capsule })
        .width('80%')
        .height(40)
        .margin(20)
        .onClick(() => {
          (info.values as NavPathStack).pushPathByName('pageOne', null)
        })
    }.width('100%').height('100%')
  }.title('pageTwo')
  .onBackPressed(() => {
    (info.values as NavPathStack).pop()
    return true
  })
}