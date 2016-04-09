package pe.com.divemotor.sidweb.util.message;

import java.util.Locale;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

/**
 *
 * @author yvancho
 */
@Component
public class MessagesSourceConfig {

    private static final Log LOGGER = LogFactory.getLog(MessagesSourceConfig.class);

    @Autowired
    private MessageSource messages;

    public String getMessage(final String code) {
        final Object[] args = null;
        return getMessage(code, args);
    }

    public Boolean getMessageBoolean(final String code) {
        try {
            return Boolean.valueOf(getMessage(code));
        } catch (final Exception e) {
            LOGGER.error("Exception: ", e);
        }
        return false;
    }

    public Long getMessageLong(final String code) {
        try {
            return Long.valueOf(getMessage(code));
        } catch (final Exception e) {
            LOGGER.error("Exception: ", e);
            return null;
        }
    }

    public String getMessage(final String code, final Object... args) {
        final Locale locale = null;
        return getMessage(code, locale, args);
    }

    public String getMessage(final String code, final Locale locale, final Object... args) {
        return messages.getMessage(code, args, locale);
    }
}
