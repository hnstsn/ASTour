package com.project.astour.service.android;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.android.AndroidDAO;

@Service
public class AndroidServiceImpl implements AndroidService {
	
	@Inject
	AndroidDAO androidDAO;
	
	
	@Override
	public void gpsRecord(
			String label_record,
			String latitude_record, 
			String longitude_record,
			String time_record,
			String mpk) {
		
		androidDAO.gpsRecord(
				label_record,
				latitude_record, 
				longitude_record,
				time_record,
				mpk);
	}

}
