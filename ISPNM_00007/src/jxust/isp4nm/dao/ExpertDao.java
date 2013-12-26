package jxust.isp4nm.dao;

import java.util.List;

import jxust.isp4nm.model.Expert;

public interface ExpertDao
{
	public void deleteById(int id);

	public List<Expert> find(String sql, int page);

	public List<Expert> find1(String sql, int page);

	public List<Expert> findAll(int page);

	public Expert findById(int id);

	public List<Expert> findByResearchFields(String researchFields);

	public List<Expert> findByResearchFieldsAll(String researchFields, int page);

	public Expert getExpert(int id);

	public int getRows();

	public int getRows(String researchFields);

	public int getRows(String researchFields, String name);

	public int getRows(String researchFields, String name, String majorFields,
			String workplace, String researchCon, String workposition);

	public void save(Expert expert);

	public void update(Expert expert);

	public void update(int id);
	public List<Expert> listNewExpert(String Category);

}
