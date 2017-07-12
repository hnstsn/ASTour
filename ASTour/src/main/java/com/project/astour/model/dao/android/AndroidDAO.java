package com.project.astour.model.dao.android;

public interface AndroidDAO {
	
	public void gpsRecord(
			String label_record,
			String latitude_record, 
			String longitude_record,
			String time_record,
			String mpk);
}
