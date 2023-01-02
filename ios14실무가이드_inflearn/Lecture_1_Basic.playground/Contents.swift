//http://iosbrain.com/blog/2018/08/16/xcode-9-playground-error-no-such-module-uikit-or-appkit/
// no such module 'UIKit' 오류뜨면 참고
import UIKit

// 값을 보고 type을 정한다
// 변수
// keyword : var로 정의
// string은 "" 필요

//1. var, let lecture

var str = "Hello, playground"


var age = 0


age = 30
age = 20

str = "다른 언어랑 참 비슷하네 다행 순차적으로 처리됨 기본 개념"



// Swift 언어 특징
// type Safe타입 안전한, 강타입, 타입이 엄격


// age = "123" 이럴 경우 Cannot assign value of type 'String' to type 'Int'
// 즉 형변환이 안된다는 오류 메세지 발생
//str = 111 도 마찬가지 string type을 int type으로 할당 impossible
// javaScript은 근데 위에 두가지가 다 가능 즉 type Safe하지 않다 - 기본적인 sw 지식

// 상수 - 값이 변하지 않는다.
// keyword : let로 정의
let guestName = "john"

//guestName = "Kim" - Cannot assign to value: guestName is constant error

let userID = "abc@demo.com" // 고정형 데이터 값은 let keyword로 상수 지정




//--------------------------------------------------------------------//

//
//2. type Annotations(타입 주석) lecture

var str1: String = "Hahaha"
var myAge: Int = 32

//string이나 int같은 경우는 딱 봐도 타입을 알 수 있어서 잘 쓰지 않는다.
//보통 언제 사용하냐면?

var screenHeight: Float = 560 // int 타입의 형태로 할당했는데 이 screenHeight변수 타입을 float으로 하고 싶을때 이렇게 type annotation을 쓴다

//var sum = myAge + screenHeight error 발생 - int type과 float type연산 불가능

var sum = myAge + Int(screenHeight) // 이렇게 하면 가능 즉 type Safe, 타입이 엄격하다


//--------------------------------------------------------------------//

//3. bool lecture

var isOpen = false

// {를 사용하는건 c++ 처럼 생각하면 될듯
// 조건문에서 잘 사용됨
if isOpen{//는 isOpen == true와 같은 의미 c++과 같다고 보면 될듯
    
}else{
    
}

//--------------------------------------------------------------------//

//4. tuple (쌍, 짝의 개념)

// 우리가 앱을 만들때 text와 image가 딱 맞춰서 들어가는 경우
var topTitle = ("메인화면", "mainIcon.png-이미지의 이름") // 쌍을 이뤄서 사용하기 위해서 ( 괄호안에 값을 이 처럼 입력하면 됨 type은 tuple임

//print(topTitle.0) => 메인화면
//print(topTitle.1) => mainIcon.png-이미지의 이름

//http status code라는게 있는데 개발해서 네트워크를 주고 받을때 가장 기본이 되는 상태값이 어떤지를 나눠주는거 몇가지 정도는 알아야 된다
// 표준값(정해진 규칙)이기 때문에 지켜야 한다
// 200값은 받았다를 나타냄
// 404값은 page not found를 나타내는 값

//var httpError = (404, "page not found")

//httpError.0 이나 .1로 값을 접근하는건 가독성도 떨어지고 좋은 방법이 아니라서
//key value와 유사하게 설명을 써놓을 수 있다 예를 들면
var httpError = (statusCode : 404, description : "page not found")
//이렇게 했을때 .0, .1이 아니라

httpError.statusCode
httpError.description // 이렇게 값에 접근이 가능하다 즉 사람이 쉽게 이해할 수 있도록 설명변수를 설정해주는 것이 좋다.
















