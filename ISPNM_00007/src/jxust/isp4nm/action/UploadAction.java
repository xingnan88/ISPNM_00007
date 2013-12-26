package jxust.isp4nm.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.annotation.Resource;

import jxust.isp4nm.model.MPP;
import jxust.isp4nm.service.MPPService;
import jxust.isp4nm.util.Tools;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("uploadAction")
@Scope("prototype")
public class UploadAction extends ActionSupport {
	private File file;
	private String fileFileName;
	private String uploadPath;
	private String videoPath;
	private String ffmpegPath;
	private String imgPath;
	private MPP mpp;
	
	@Resource
	private MPPService mppService;
	
	public MPP getMpp() {
		return mpp;
	}

	public void setMpp(MPP mpp) {
		this.mpp = mpp;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getFfmpegPath() {
		return ffmpegPath;
	}

	public void setFfmpegPath(String ffmpegPath) {
		this.ffmpegPath = ffmpegPath;
	}

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {			
		this.fileFileName = Tools.getNowTime() + "." + Tools.getExtension(fileFileName);
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	@Override
	public String execute() throws Exception {
		if(!Tools.getExtension(fileFileName).equals("wmv")){
			System.out.println(Tools.getExtension(fileFileName));
			this.addFieldError("error", "视频文件类型错误，只能上传wmv格式文件！");
			return ERROR;
		}
		this.upload();
		ffmpegPath = Tools.getRealPath(ffmpegPath);
		String vPath = Tools.getRealPath(uploadPath);
		String imagePath = Tools.getRealPath(imgPath);
		String imagename = Tools.getNowTime();
		vPath = vPath + File.separator +fileFileName;
		imagePath = imagePath + File.separator + imagename + ".jpg";

		if(Tools.change(ffmpegPath, vPath, imagePath)){
			videoPath = uploadPath + fileFileName;
			imgPath = imgPath + imagename + ".jpg";
			this.mpp = this.mppService.findById(mpp.getId());
			mpp.setDhlj(videoPath);
			mpp.setTplj(imgPath);
			mppService.update(mpp);
			return "success";
		}
		this.addFieldError("error", "视频截图出现异常！请与系统管理员联系！");
		return ERROR;
	}
	
	private void upload(){
		
		try{
			InputStream is = new FileInputStream(this.file);
			String p = Tools.getRealPath(uploadPath);
//			System.out.println(p);
			File deskFile = new File(p, this.fileFileName);
			OutputStream os = new FileOutputStream(deskFile);
			byte[] bytefer = new byte[1024];
			int length = 0;
			while ((length = is.read(bytefer)) != -1) {
				os.write(bytefer, 0, length);
			}
			os.close();
			is.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
