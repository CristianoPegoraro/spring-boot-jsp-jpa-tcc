package br.com.optosistem.type.converter;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(
        autoApply = true)
public class LocalDatePersistenceConverter implements AttributeConverter<LocalDate, Date> {
    
    @Override
    public Date convertToDatabaseColumn(LocalDate value) {
        if (value != null) {
            return java.sql.Date.valueOf(value);
        } else {
            return null;
        }
    }
    
    @Override
    public LocalDate convertToEntityAttribute(Date dbData) {
        if (dbData != null) {
            return dbData.toLocalDate();
        } else {
            return null;
        }
    }
}
