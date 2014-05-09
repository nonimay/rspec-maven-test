require 'java'
require 'rspec'

java_import 'org.springframework.context.ApplicationContext'
java_import 'org.springframework.context.support.ClassPathXmlApplicationContext'

describe "Calculator" do
  it "should add numbers correctly" do
    application_context = ClassPathXmlApplicationContext.new "ApplicationContext.xml"
    calculator =  application_context.getBean "calculatorService"
    calculator.sum([1, 2]).should == 3
    calculator.sum([2, 2]).should == 4
    calculator.sum([2, 3, 4]).should == 9
  end
end
