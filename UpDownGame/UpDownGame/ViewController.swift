//
//  ViewController.swift
//  UpDownGame
//
//  Created by 장정안 on 2022/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    // outlet이라는 것은 interface builder에 올라와 있는 UI요소에 어떤 값을 가져오고 싶고 코드에 활용을 하고 싶을때 사용
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // IBAction이라는 것은 interface 요소들이 event를 받았을때 그것에 반응하기 위한 Action코드를 작성하기 위해 사용을 한다.
    
    @IBAction func sliderValueChanged(_ sender: UISlider){
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){
        print(slider.value)
    }
    
    // 만약 unrecognized selector라는 오류가 발생할 때 함수명을 변경할 때 다른 연결된 event에 여전히 바뀌기 전 이름이 남아있다는 문제점을 생각해보아야 한다.
    // 이런 경우를 방지하기 위해 함수명을 바꿀때 우클릭후 refactor을 통해 rename을 하는 습관을 들이자
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touch up reset button")
    }
    
    
}

