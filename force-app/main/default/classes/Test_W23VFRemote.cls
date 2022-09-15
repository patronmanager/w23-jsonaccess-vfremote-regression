@IsTest
public with sharing class Test_W23VFRemote {
	@IsTest
	private static void testGetData(){
		W23VFRemote.SampleDTO dto = W23VFRemote.getData();
		System.assertEquals('Hello',dto.message);
	}

}