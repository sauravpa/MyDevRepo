Public class setBusinessHoursForTaskHandler{
	public void setReminderTime(Map<ID,Task> allTaskMap){
		List<BusinessHours> myOrgBusinessHour =[SELECT FridayEndTime,FridayStartTime,Id,IsActive,IsDefault,MondayEndTime,MondayStartTime,Name,SaturdayEndTime,SaturdayStartTime,SundayEndTime,SundayStartTime,ThursdayEndTime,ThursdayStartTime,TimeZoneSidKey,TuesdayEndTime,TuesdayStartTime,WednesdayEndTime,WednesdayStartTime FROM BusinessHours
		];
		System.debug('Inside Class');
		System.debug('All keyset value'+allTaskMap.keySet());
		if(allTaskMap.keySet()!=null){
			for(ID currTaskID : allTaskMap.keySet()){
			Datetime taskDateTime=allTaskMap.get(currTaskID).ActivityDate;
			System.debug('My Task Due Date is : '+taskDateTime);
			/*Datetime dt = DateTime.newInstance(taskDateTime, Time.newInstance(0, 0, 0, 0));
			String dayOfWeek=dt.format('EEEE');
			if(dayOfWeek.equals('Saturday')||dayOfWeek=='Saturday'){
				dt.addDays(2);
			}*/
		}
		}

	}

}