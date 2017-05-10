#include "textfielddoublevalidator.h"

TextFieldDoubleValidator::TextFieldDoubleValidator(QObject * parent) : QDoubleValidator(parent)
{
}

TextFieldDoubleValidator::TextFieldDoubleValidator(double bottom, double top, int decimals, QObject * parent) :
QDoubleValidator(bottom, top, decimals, parent)
{
}

QValidator::State TextFieldDoubleValidator::validate(QString & s, int & pos) const
{
    if (s.isEmpty()) {
        // allow empty field or minus sign
        return QValidator::Intermediate;
    }
    // check length of decimal places
    QChar point = locale().decimalPoint();
    if(s.indexOf(point) != -1) {
        int lengthDecimals = s.length() - s.indexOf(point) - 1;
        if (lengthDecimals > decimals()) {
            return QValidator::Invalid;
        }
    }
    // check range of value
    bool isNumber;
    double value = locale().toDouble(s, &isNumber);
    if (isNumber && bottom() <= value && value <= top()) {
        return QValidator::Acceptable;
    }
    return QValidator::Invalid;
}
