package august.dao;

import august.model.SssOrder;
import java.util.List;

public interface SssOrderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sss_order
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String orderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sss_order
     *
     * @mbg.generated
     */
    int insert(SssOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sss_order
     *
     * @mbg.generated
     */
    SssOrder selectByPrimaryKey(String orderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sss_order
     *
     * @mbg.generated
     */
    List<SssOrder> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sss_order
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(SssOrder record);
}