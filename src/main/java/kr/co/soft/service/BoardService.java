package kr.co.soft.service;

import org.springframework.stereotype.Service;

import kr.co.soft.beans.ContentBean;

@Service
public class BoardService {

	public void addContentInfo(ContentBean writeContentBean) {
		System.out.println(writeContentBean.getContent_subject());
		System.out.println(writeContentBean.getContent_text());
		System.out.println(writeContentBean.getUpload_file().getSize());
	}
}
