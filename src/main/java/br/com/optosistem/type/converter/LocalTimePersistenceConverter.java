package br.com.optosistem.type.converter;

import java.sql.Time;
import java.time.LocalTime;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(
        autoApply = true)
public class LocalTimePersistenceConverter implements AttributeConverter<LocalTime, Time> {
    
    @Override
    public Time convertToDatabaseColumn(LocalTime value) {
        if (value != null) {
            return Time.valueOf(value);
        } else {
            return null;
        }
    }
    
    @Override
    public LocalTime convertToEntityAttribute(Time dbData) {
        if (dbData != null) {
            return dbData.toLocalTime();
        } else {
            return null;
        }
    }
}
