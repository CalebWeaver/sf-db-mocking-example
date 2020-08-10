@isTest
public class SE_SObjectDAStub implements System.StubProvider {

	public List<SObject> sobjects = new List<SObject>();

	public Object handleMethodCall(Object stubbedObject, String stubbedMethodName, Type returnType,
		List<Type> listOfParamTypes, List<String> listOfParamNames,	List<Object> listOfArgs) {

		if ((SObject.class).isAssignableFrom(returnType)) {
			return sobjects[0];
		} else if ((List<SObject>.class).isAssignableFrom(returnType)) {
			return sobjects;
		} else {
			return null;
		}
	}
}
