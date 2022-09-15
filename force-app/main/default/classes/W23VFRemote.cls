public with sharing class W23VFRemote {

	@RemoteAction
	public static SampleDTO getData(){
		return new SampleDTO();
	}

	public class SampleDTO{
		public String message = 'Hello';
		public DateTime current = DateTime.now();
	}
}