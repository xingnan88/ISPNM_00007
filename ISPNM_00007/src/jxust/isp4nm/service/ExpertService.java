package jxust.isp4nm.service;

import java.util.List;

import jxust.isp4nm.model.Expert;

public interface ExpertService
{
	public void add(Expert expert);

	public void deleteByIdExpert(int id);

	public List<Expert> find(String sql, int page);

	public List<Expert> find1(String sql, int page);

	public List<Expert> findAllExpert(int page);

	public Expert findByIdExpert(int id);

	public List<Expert> findByResearchFields(String researchFields);

	public List<Expert> findByResearchFieldsAll(String researchFields, int page);

	public Expert getExpert(int id);

	public int getRows();

	public int getRows(String researchFields);

	public int getRows(String researchFields, String name);

	public int getRows(String researchFields, String name, String majorFields,
			String workplace, String researchCon, String workposition);

	public void updateExpert(Expert expert);

	public void updateExpert(int id);
	public List<Expert> listNewExpert(String Category);

}
